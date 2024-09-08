Class {
	#name : #UFFreeCell,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFFreeCell class >> structureDecl [
	^#('free?' 'any?' 'any?' next)
]

{ #category : #access }
UFFreeCell >> next [
	^self at: 4
]

{ #category : #access }
UFFreeCell >> type [
	^self at: 1
]
