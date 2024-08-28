Extension { #name : #SmallInteger }

{ #category : #'*UForkGT' }
SmallInteger >> direct [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT' }
SmallInteger >> isDirect [
	"This method was automatically generated"
	^ self & 2147483648 ~= 0
]

{ #category : #'*UForkGT' }
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

{ #category : #'*UForkGT' }
SmallInteger >> isOpaque [
	"This method was automatically generated"
	^ self & 536870912 ~= 0
]

{ #category : #'*UForkGT' }
SmallInteger >> mutable [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGT' }
SmallInteger >> opaque [
	"This method was automatically generated"
	^ self bitAt:32
]

{ #category : #'*UForkGT' }
SmallInteger >> setDirect [
	"This method was automatically generated"
	^self & 2147483648
]

{ #category : #'*UForkGT' }
SmallInteger >> setMutable [
	"This method was automatically generated"
	^self & 1073741824
]

{ #category : #'*UForkGT' }
SmallInteger >> setNotDirect [
	"This method was automatically generated"
	^self & -2147483649
]

{ #category : #'*UForkGT' }
SmallInteger >> setNotMutable [
	"This method was automatically generated"
	^self & -1073741825
]

{ #category : #'*UForkGT' }
SmallInteger >> setNotOpaque [
	"This method was automatically generated"
	^self & -536870913
]

{ #category : #'*UForkGT' }
SmallInteger >> setOpaque [
	"This method was automatically generated"
	^self & 536870912
]
