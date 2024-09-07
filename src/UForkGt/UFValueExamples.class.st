Class {
	#name : #UFValueExamples,
	#superclass : #UFValue,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFValueExamples class >> baseChain: t [
	^((UFValue typeDecl: t) splitOn: ' | ') addFirst: 'value'; yourself
]

{ #category : #'as yet unclassified' }
UFValueExamples class >> baseChains [
	^((UFValue complexDeclTypes) collect: [:t|t -> (self baseChain: t)])  sorted: [:a :b| a value size > b value size]
]

{ #category : #example }
UFValueExamples class >> complex: t [ 
	self baseChains detect: [:c| c value last = t] ifOne: [:ch|^ch key].
	^nil
]

{ #category : #'as yet unclassified' }
UFValueExamples class >> parent: aType [
	self baseChains do: [:c| c value detect: [:t| t = aType] ifOne: [:t|^c value before: t]].
]

{ #category : #example }
UFValueExamples class >> titledTypeHierarchy [
	<gtExample>
	^GtPhlowExplicitView new  stencil: self typeHierarchy; labelled: 'type hierarchy'
]

{ #category : #example }
UFValueExamples class >> typeHierarchy [
	<gtExample>
	| m |
	m := GtMondrian new.
	m nodes
		stencil: [ :t | 
			| c b l |
			c := BrHorizontalFlow new fitContent.
			b := (self complex: t) ifNotNil: [:na|
				BrButton new beTinySize;
					aptitude: BrGlamorousButtonWithLabelAptitude;
					label: na;
					action: [ :aBrButton | aBrButton phlow spawnObject: (UFValue assignmentNode: t)] ].
			l := BrLabel new
					aptitude: BrGlamorousLabelAptitude;
					text: (t asRopedText ). 
			c addChildren: ((UFValue isNegative: t) ifTrue: [{l . b} copyWithout: nil] ifFalse: [{b . l} copyWithout: nil])];
		with: UFValue baseTypesWithNegations.
	m nodes
		stencil: [ :t| 
			BrLabel new
				aptitude: BrGlamorousLabelAptitude;
				text: t];
		with: {'value'}.

	m edges
		"stencil: [:t :from :to| ((t = 'direct') | (t = 'indirect')) ifTrue: [GtMondrianEdgeBuilder new defaultEdgeElement] ifFalse: [	GtMondrianEdgeBuilder new defaultEdgeElement
				fromAnchor: (BlElementBottomCenterAnchor element: ((from query / BrButton) anyOne));"
			"	toAnchor: (BlElementTopCenterAnchor element: to)]];"
	    connectFrom: [ :t | t ~= 'value' ifTrue: [ self parent: t ] ].
	m layout tree.
	^ m
]
