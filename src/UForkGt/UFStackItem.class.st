Class {
	#name : #UFStackItem,
	#superclass : #QuadCell,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance creation' }
UFStackItem class >> item: item rest: rest [ 
	^self at: 2 put: item; at: 3 put: rest;  yourself
]

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
