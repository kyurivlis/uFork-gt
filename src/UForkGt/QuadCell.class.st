Class {
	#name : #QuadCell,
	#superclass : #WordArray,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'private - instance code' }
QuadCell class >> accessor: d at: i [
	|n| 
	n:=d.
	(d matches: '?') ifTrue: [n:='type'].
	(d matches: 'any?') ifTrue: [^nil].
	self compile: (n, '
	^self at: ', i asString)
	classified: #access
]

{ #category : #initiailize }
QuadCell class >> initialize [
	self rebuildAccessors
]

{ #category : #'instance  creation' }
QuadCell class >> new [ 
	^super new: 4
]

{ #category : #'instance  creation' }
QuadCell class >> new: aNum [
	^self shouldNotImplement
]

{ #category : #'private - instance code' }
QuadCell class >> rebuildAccessors [
	self structureDecl withIndexDo: [:e :i|
		self accessor: e at:i]
]

{ #category : #'private - instance code' }
QuadCell class >> structureDecl [
	^#()
]
