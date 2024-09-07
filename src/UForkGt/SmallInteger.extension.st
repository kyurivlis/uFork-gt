Extension { #name : #SmallInteger }

{ #category : #'*UForkGT-access' }
SmallInteger >> direct [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> fixnum [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> immutable [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> indirect [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isDirect [
	"This method was automatically generated"
	^ self & 2147483648 = 2147483648
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isFixnum [
	"This method was automatically generated"
	^ self & 2147483648 = 2147483648
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isImmutable [
	"This method was automatically generated"
	^ self & 1073741824 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isIndirect [
	"This method was automatically generated"
	^ self & 2147483648 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isMutable [
	"This method was automatically generated"
	^ self & 1073741824 = 1073741824
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotFixnum [
	"This method was automatically generated"
	^ self & 2147483648 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotOcap [
	"This method was automatically generated"
	^ self & 3758096384 = 2147483648
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotPtr [
	"This method was automatically generated"
	^ self & 2147483648 = 2147483648
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotRam [
	"This method was automatically generated"
	^ self & 3758096384 = 2684354560
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotRom [
	"This method was automatically generated"
	^ self & 3221225472 = 3221225472
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isOcap [
	"This method was automatically generated"
	^ self & 3758096384 = 1610612736
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isOpaque [
	"This method was automatically generated"
	^ self & 536870912 = 536870912
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isPtr [
	"This method was automatically generated"
	^ self & 2147483648 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isRam [
	"This method was automatically generated"
	^ self & 3758096384 = 1073741824
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isRom [
	"This method was automatically generated"
	^ self & 3221225472 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isTransparent [
	"This method was automatically generated"
	^ self & 536870912 = 0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> mutable [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notFixnum [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notOcap [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notPtr [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notRam [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notRom [
	"This method was automatically generated"
	^ self bitAt:30
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ocap [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGT-access' }
SmallInteger >> opaque [
	"This method was automatically generated"
	^ self bitAt:32
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ptr [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ram [
	"This method was automatically generated"
	^ self bitAt:31
]

{ #category : #'*UForkGT-access' }
SmallInteger >> rom [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setDirect [
	"This method was automatically generated"
	^self & -2147483649 | 2147483648
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setFixnum [
	"This method was automatically generated"
	^self & -2147483649 | 2147483648
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setImmutable [
	"This method was automatically generated"
	^self & -1073741825 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setIndirect [
	"This method was automatically generated"
	^self & -2147483649 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setMutable [
	"This method was automatically generated"
	^self & -1073741825 | 1073741824
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotFixnum [
	"This method was automatically generated"
	^self & -2147483649 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotOcap [
	"This method was automatically generated"
	^self & -3758096385 | 2147483648
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotPtr [
	"This method was automatically generated"
	^self & -2147483649 | 2147483648
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotRam [
	"This method was automatically generated"
	^self & -3758096385 | 2684354560
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotRom [
	"This method was automatically generated"
	^self & -3221225473 | 3221225472
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setOcap [
	"This method was automatically generated"
	^self & -3758096385 | 1610612736
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setOpaque [
	"This method was automatically generated"
	^self & -536870913 | 536870912
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setPtr [
	"This method was automatically generated"
	^self & -2147483649 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setRam [
	"This method was automatically generated"
	^self & -3758096385 | 1073741824
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setRom [
	"This method was automatically generated"
	^self & -3221225473 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setTransparent [
	"This method was automatically generated"
	^self & -536870913 | 0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> transparent [
	"This method was automatically generated"
	^ self bitAt:0
]
