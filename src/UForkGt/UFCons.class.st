Class {
	#name : #UFCons,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFCons class >> head: head tail: tail [ 
	^self at: 2 put: head; at: 3 put: tail;  yourself
]

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
