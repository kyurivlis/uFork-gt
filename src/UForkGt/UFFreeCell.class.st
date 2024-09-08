Class {
	#name : #UFFreeCell,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFFreeCell class >> next: next [ 
	^self at: 4 put: next;  yourself
]

{ #category : #'as yet unclassified' }
UFFreeCell class >> structureDecl [
	^#('free?' 'any?' 'any?' next)
]

{ #category : #access }
UFFreeCell >> next [
^self at: 4
]
