Class {
	#name : #UFDictEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

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
UFDictEntry >> type [
	^self at: 1
]

{ #category : #access }
UFDictEntry >> value [
	^self at: 3
]
