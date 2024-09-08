Class {
	#name : #UFInstruction,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFInstruction class >> opcode: opcode data: data next: next [ 
	^self at: 2 put: opcode; at: 3 put: data; at: 4 put: next;  yourself
]

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
