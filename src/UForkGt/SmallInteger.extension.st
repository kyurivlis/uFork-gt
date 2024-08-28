Extension { #name : #SmallInteger }

{ #category : #'*UForkGt' }
SmallInteger >> direct [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGt' }
SmallInteger >> isDirect [
	"This method was automatically generated"
	^ self & 2147483648 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> isMutable [
	"This method was automatically generated"
	^ self & 1073741824 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> isNotDirect [
	"This method was automatically generated"
	^ self & -2147483649 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> isNotMutable [
	"This method was automatically generated"
	^ self & -1073741825 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> isNotOpaque [
	"This method was automatically generated"
	^ self & -536870913 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> isOpaque [
	"This method was automatically generated"
	^ self & 536870912 ~= 0
]

{ #category : #'*UForkGt' }
SmallInteger >> mutable [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGt' }
SmallInteger >> opaque [
	"This method was automatically generated"
	^ self bitAt:32
]

{ #category : #'*UForkGt' }
SmallInteger >> setDirect [
	"This method was automatically generated"
	^self & 2147483648
]

{ #category : #'*UForkGt' }
SmallInteger >> setMutable [
	"This method was automatically generated"
	^self & 1073741824
]

{ #category : #'*UForkGt' }
SmallInteger >> setNotDirect [
	"This method was automatically generated"
	^self & -2147483649
]

{ #category : #'*UForkGt' }
SmallInteger >> setNotMutable [
	"This method was automatically generated"
	^self & -1073741825
]

{ #category : #'*UForkGt' }
SmallInteger >> setNotOpaque [
	"This method was automatically generated"
	^self & -536870913
]

{ #category : #'*UForkGt' }
SmallInteger >> setOpaque [
	"This method was automatically generated"
	^self & 536870912
]
