Class {
	#name : #UFMessageQueueEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFMessageQueueEntry class >> sponsor: sponsor target: target msg: msg next: next [ 
	^self at: 1 put: sponsor; at: 2 put: target; at: 3 put: msg; at: 4 put: next;  yourself
]

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
