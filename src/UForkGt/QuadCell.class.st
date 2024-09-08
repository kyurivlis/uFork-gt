Class {
	#name : #QuadCell,
	#superclass : #WordArray,
	#type : #words,
	#classInstVars : [
		'struct'
	],
	#category : #UForkGt
}

{ #category : #'private - instance code' }
QuadCell class >> accessors [
	struct
		withIndexDo: [ :e :i | 
			(self isType: e) ifFalse: [
			self compile: (e , '
^self at: ' , i asString)
				classified: #access ]]
]

{ #category : #initiailize }
QuadCell class >> initialize [
	struct:= self structureDecl.
	self rebuildMethods
]

{ #category : #'private - instance code' }
QuadCell class >> instanceCreationMethod [
	| aName code |
	aName:= self stringFromValues: [:e :i| e, ': ',e,' '].
	code:=self stringFromValues: [:e :i| 'at: ', i asString, ' put: ', e, '; '].
	self class compile: (aName, '
	^self ', code, ' yourself') classified: 'instance creation'
		
	
]

{ #category : #'private - instance code' }
QuadCell class >> isAny: e [
	^ e matches: 'any?'
]

{ #category : #'private - instance code' }
QuadCell class >> isType: e [ 
	^e matches: '?'
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
QuadCell class >> rebuildMethods [
	self accessors.
	self instanceCreationMethod.
]

{ #category : #'as yet unclassified' }
QuadCell class >> stringFromValues: aBlock [
	^String
			streamContents: [ :w | 
				struct
					withIndexDo: [ :e :i | (self isType: e) ifFalse: [w nextPutAll: (aBlock cull: e cull: i)]]]
]

{ #category : #'private - instance code' }
QuadCell class >> structureDecl [
	^#(t x y z)
]

{ #category : #'instance creation' }
QuadCell class >> t: t x: x y: y z: z [ 
	^self at: 1 put: t; at: 2 put: x; at: 3 put: y; at: 4 put: z;  yourself
]

{ #category : #access }
QuadCell >> t [
^self at: 1
]

{ #category : #access }
QuadCell >> x [
^self at: 2
]

{ #category : #access }
QuadCell >> y [
^self at: 3
]

{ #category : #access }
QuadCell >> z [
^self at: 4
]
