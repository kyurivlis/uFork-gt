Extension { #name : #SmallInteger }

{ #category : #'*UForkGT-access' }
SmallInteger >> direct [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-absence' }
SmallInteger >> isDirect [
	"This method was automatically generated"
	^ self & 2147483648 ~= 0
]

{ #category : #'*UForkGT-absence' }
SmallInteger >> isMutable [
	"This method was automatically generated"
	^ self & 1073741824 ~= 0
]

{ #category : #'*UForkGT' }
SmallInteger >> isNotDirect [
	"This method was automatically generated"
	^ self & -2147483649 ~= 0
]

{ #category : #'*UForkGT' }
SmallInteger >> isNotMutable [
	"This method was automatically generated"
	^ self & -1073741825 ~= 0
]

{ #category : #'*UForkGT' }
SmallInteger >> isNotOpaque [
	"This method was automatically generated"
	^ self & -536870913 ~= 0
]

{ #category : #'*UForkGT-absence' }
SmallInteger >> isOpaque [
	"This method was automatically generated"
	^ self & 536870912 ~= 0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> mutable [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGT-access' }
SmallInteger >> opaque [
	"This method was automatically generated"
	^ self bitAt:32
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setDirect [
	"This method was automatically generated"
	^self & 2147483648
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setMutable [
	"This method was automatically generated"
	^self & 1073741824
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotDirect [
	"This method was automatically generated"
	^self & -2147483649
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotMutable [
	"This method was automatically generated"
	^self & -1073741825
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotOpaque [
	"This method was automatically generated"
	^self & -536870913
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setOpaque [
	"This method was automatically generated"
	^self & 536870912
]
