Class {
	#name : #UFCons,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFCons class >> structureDecl [
	^#('pair?' head tail 'any?')
]

{ #category : #access }
UFCons >> head [
	^self at: 2
]

{ #category : #access }
UFCons >> tail [
	^self at: 3
]

{ #category : #access }
UFCons >> type [
	^self at: 1
]
