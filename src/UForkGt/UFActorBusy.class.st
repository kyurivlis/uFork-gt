Class {
	#name : #UFActorBusy,
	#superclass : #UFActor,
	#type : #words,
	#category : #UForkGt
}

{ #category : #access }
UFActorBusy >> beh [
	^self at: 2
]

{ #category : #access }
UFActorBusy >> effects [
	^self at:4
]

{ #category : #access }
UFActorBusy >> sp [
	^self at: 3
]

{ #category : #access }
UFActorBusy >> third [
	^self at: 4
]

{ #category : #access }
UFActorBusy >> type [
	^self at: 1
]
