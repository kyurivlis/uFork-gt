Class {
	#name : #UFInstruction,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFInstruction class >> structureDecl [
	^#('instr?' opcode data next)
]

{ #category : #access }
UFInstruction >> data [
	^self at: 3
]

{ #category : #access }
UFInstruction >> next [
	^self at: 4
]

{ #category : #access }
UFInstruction >> opcode [
	^self at: 2
]

{ #category : #access }
UFInstruction >> type [
	^self at: 1
]
