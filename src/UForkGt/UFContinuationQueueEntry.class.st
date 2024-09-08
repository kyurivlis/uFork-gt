Class {
	#name : #UFContinuationQueueEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFContinuationQueueEntry class >> ip: ip sp: sp ep: ep next: next [ 
	^self at: 1 put: ip; at: 2 put: sp; at: 3 put: ep; at: 4 put: next;  yourself
]

{ #category : #meta }
UFContinuationQueueEntry class >> structureDecl [
	^#(ip sp ep next)
]

{ #category : #access }
UFContinuationQueueEntry >> ep [
^self at: 3
]

{ #category : #access }
UFContinuationQueueEntry >> ip [
^self at: 1
]

{ #category : #access }
UFContinuationQueueEntry >> next [
^self at: 4
]

{ #category : #access }
UFContinuationQueueEntry >> sp [
^self at: 2
]
