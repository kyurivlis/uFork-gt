Class {
	#name : #UFContinuationQueueEntry,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

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
