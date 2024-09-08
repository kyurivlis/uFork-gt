Class {
	#name : #UFStackItem,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'as yet unclassified' }
UFStackItem class >> structureDecl [
	^#('pair?' item rest 'any?')
]

{ #category : #access }
UFStackItem >> item [
	^self at: 2
]

{ #category : #access }
UFStackItem >> rest [
	^self at: 3
]

{ #category : #access }
UFStackItem >> type [
	^self at: 1
]
