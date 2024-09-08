Class {
	#name : #UFDictEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFDictEntry class >> key: key value: value next: next [ 
	^self at: 2 put: key; at: 3 put: value; at: 4 put: next;  yourself
]

{ #category : #'as yet unclassified' }
UFDictEntry class >> structureDecl [
	^#('dict?' key value next)
]

{ #category : #access }
UFDictEntry >> key [
^self at: 2
]

{ #category : #access }
UFDictEntry >> next [
^self at: 4
]

{ #category : #access }
UFDictEntry >> value [
^self at: 3
]
