Class {
	#name : #UFActor,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFActor class >> structureDecl [
	^#('actor?' beh sp 'any?')
]

{ #category : #access }
UFActor >> beh [
	^self at: 2
]

{ #category : #access }
UFActor >> sp [
	^self at: 3
]

{ #category : #access }
UFActor >> third [
	^self at: 4
]

{ #category : #access }
UFActor >> type [
	^self at: 1
]
