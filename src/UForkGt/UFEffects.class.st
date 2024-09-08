Class {
	#name : #UFEffects,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

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

{ #category : #access }
UFEffects >> type [
	^self at: 1
]
