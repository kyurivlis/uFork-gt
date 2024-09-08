Class {
	#name : #UFActorBusy,
	#superclass : #UFActor,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFActorBusy class >> beh: beh sp: sp [ 
	^self at: 2 put: beh; at: 3 put: sp;  yourself
]

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
