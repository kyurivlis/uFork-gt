Class {
	#name : #UFValue,
	#superclass : #Object,
	#classInstVars : [
		'types'
	],
	#category : #UForkGt
}

{ #category : #'private - protocol' }
UFValue class >> accessProtocol [
	^#'*UForkGT-access'
]

{ #category : #'as yet unclassified' }
UFValue class >> baseMaskFor: aName [ 
]

{ #category : #'as yet unclassified' }
UFValue class >> baseTypeDictionary [
	^(#(direct mutable opaque)
			collect: [ :x | x -> ((self typeDecl tempNamed: x)
									-> (self baseMaskFor: x))])
	asOrderedDictionary.
]

{ #category : #private }
UFValue class >> baseTypes [
	^#(direct mutable opaque)
]

{ #category : #'private - instance code' }
UFValue class >> defineTypeAccessFor: aType tag: aTag mask: aMask [
	"Define accessors as class methods"
	^(aType, '
	"This method was automatically generated"
	^ self bitAt:', (aTag bitString findString: '1') asString) -> self accessProtocol.
]

{ #category : #'private - instance code' }
UFValue class >> defineTypeSetFor: aType tag: aTag mask: aMask [
	^('set', aType capitalized, '
	"This method was automatically generated"
	^self & ', aMask bitInvert asString, ' | ', aTag asString) -> self setProtocol.
]

{ #category : #'private - instance code' }
UFValue class >> defineTypeTestFor: aType tag: aTag mask: aMask [
	^ ('is' , aType capitalized
		, '
	"This method was automatically generated"
	^ self & ' , aMask  asString , ' = ', aTag asString) -> self testProtcol
]

{ #category : #'flags declaration' }
UFValue class >> flagsDecl [
	"
	self rebuildFlagsAccessors
	"
	^{#direct -> (0 bitAt: 32 put: 1).
	  #mutable -> (0 bitAt: 31 put: 1).
	  #opaque -> (0 bitAt: 30 put: 1)}
]

{ #category : #initiailize }
UFValue class >> initialize [
	self typeDictionary

]

{ #category : #private }
UFValue class >> isNegation: t of: aType [
	^ (self negative: t of: aType) | (self negative: aType of: t)
]

{ #category : #private }
UFValue class >> isNegative: aType [ 
	^(self tagDecl: aType) matches: '& 0'
]

{ #category : #private }
UFValue class >> mask: aType [
	|mask maskSize |
	(self baseTypes includes: aType) ifTrue: [ ^ self tag: aType ].
	(self isNegative: aType) ifTrue: [ ^ self tag: (self negativeDecl: aType) ].
	maskSize := ((self tagDecl: aType) allRegexMatches: '\|') size + 1.
	mask:= 0.
	maskSize timesCollect: [:i| mask:= mask | (self mask:(self baseTypes at: i))].
	^ mask
]

{ #category : #private }
UFValue class >> methodMacros [
	^UFValue class methods
		select: [ :me | me protocol = #'private - instance code' ]
]

{ #category : #private }
UFValue class >> negative: t of: aType [
	^ (self isNegative: t) & ((self tagDecl: t) matches: aType)
]

{ #category : #private }
UFValue class >> negativeDecl: aType [ 
	^self typeDecl keys detect: [:t| self isNegation: t of: aType] ifNone: []
]

{ #category : #private }
UFValue class >> negativeInfer: t [
	(self negativeDecl: t) ifNil: [|m|
		m := self mask: t.
		self type: 'not' , t capitalized tag: ((self tag: t) bitInvert & m) mask: m]
]

{ #category : #'as yet unclassified' }
UFValue class >> predicates [
	^self typeClass methodsInProtocol: self testProtcol
]

{ #category : #'as yet unclassified' }
UFValue class >> protocolMethods [
	^UFValue class methodsInProtocol: 'private - protocol'.
]

{ #category : #'as yet unclassified' }
UFValue class >> protocols [
	^self protocolMethods collect: [ :x | x valueWithReceiver: self arguments: #() ]
]

{ #category : #private }
UFValue class >> rebuildTypeMethods [
	self typeDictionary keysAndValuesDo: [:t :tm|
		self methodMacros do:[:m||d|d:=(m valueWithReceiver: self arguments: {t. tm key. tm value}).
		SmallInteger compile: d key  classified: d value ]]
]

{ #category : #'private - protocol' }
UFValue class >> setProtocol [
	^#'*UForkGT-set'
]

{ #category : #private }
UFValue class >> tag: aType [
	^self typeDecl at: aType
]

{ #category : #'private - bit manipulation' }
UFValue class >> tagAt: anInteger [
	^ 0 bitAt: anInteger put: 1
]

{ #category : #private }
UFValue class >> tagDecl: aType [
	| node |
	node := (UFValue class >> #typeDecl) ast // RBAssignmentNode
			detect: [ :n | n variable name = aType ].
	^node value formattedCode
]

{ #category : #'private - protocol' }
UFValue class >> testAbsenceProtocol [
	^#'*UForkGT-absence'
]

{ #category : #'private - protocol' }
UFValue class >> testPresenceProtocol [
	^ #'*UForkGT-presence'
]

{ #category : #'private - protocol' }
UFValue class >> testProtcol [
	^ #'*UForkGT-test'
]

{ #category : #private }
UFValue class >> type: aType tag: aTag mask: aMask [
	types at: aType put: aTag -> aMask.
	^aType
]

{ #category : #'as yet unclassified' }
UFValue class >> typeClass [
	^SmallInteger
]

{ #category : #'flags declaration' }
UFValue class >> typeDecl [
	"
	self rebuildFlagsAccessors
	"
	|direct mutable opaque indirect immutable transparent ptr fixnum rom ram ocap|
	direct:= self tagAt: 32.
	mutable:=self tagAt: 31.
	opaque:=self tagAt: 30.
	indirect:= direct &0.
	immutable:=mutable &0.
	transparent:=opaque &0.
	ptr:=indirect.
	fixnum:=direct.
	rom:=indirect|immutable.
	ram:= indirect|mutable|transparent.
	ocap:=indirect|mutable|opaque.
	^(thisContext tempNames collect: [:n| n -> (thisContext tempNamed: n)]) asDictionary
	
]

{ #category : #private }
UFValue class >> typeDef: aType [
	^(self tag: aType) -> (self mask: aType).
]

{ #category : #private }
UFValue class >> typeDictionary [
	types:= Dictionary new.
	self typeDecl keys do: [:t|
		types at: t put: (self typeDef: t).
		self negativeInfer: t].
	^types
]

{ #category : #'as yet unclassified' }
UFValue class >> typeProtocols [
	| m |
	m := self protocolMethods.
	^ m collect: [ :x | x valueWithReceiver: self arguments: #() ]
]

{ #category : #private }
UFValue class >> types [
	^types keys
]
