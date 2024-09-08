Class {
	#name : #UFMessageQueueEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFMessageQueueEntry class >> structureDecl [
	^#(sponsor target msg next)
]

{ #category : #access }
UFMessageQueueEntry >> msg [
	^self at: 3
]

{ #category : #access }
UFMessageQueueEntry >> next [
	^self at: 4
]

{ #category : #access }
UFMessageQueueEntry >> sponsor [
	^self at: 1
]

{ #category : #access }
UFMessageQueueEntry >> target [
	^self at: 2
]
