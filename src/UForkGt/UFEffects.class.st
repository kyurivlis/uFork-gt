Class {
	#name : #UFEffects,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFEffects class >> beh_: beh_ sp_: sp_ events: events [ 
	^self at: 2 put: beh_; at: 3 put: sp_; at: 4 put: events;  yourself
]

{ #category : #'as yet unclassified' }
UFEffects class >> structureDecl [
	^#('actor?' 'beh_' 'sp_' events)
]

{ #category : #access }
UFEffects >> beh_ [
^self at: 2
]

{ #category : #access }
UFEffects >> events [
^self at: 4
]

{ #category : #access }
UFEffects >> sp_ [
^self at: 3
]
