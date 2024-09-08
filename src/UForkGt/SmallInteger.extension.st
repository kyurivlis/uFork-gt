Extension { #name : #SmallInteger }

{ #category : #'*UForkGT-access' }
SmallInteger >> direct [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> fixnum [
	"This method was automatically generated"
	^ self bitAt:0
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
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isFixnum [
	"This method was automatically generated"
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isImmutable [
	"This method was automatically generated"
	^ self & 1 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isIndirect [
	"This method was automatically generated"
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isMutable [
	"This method was automatically generated"
	^ self & 1 = 1
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotFixnum [
	"This method was automatically generated"
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotOcap [
	"This method was automatically generated"
	^ self & 3 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotPtr [
	"This method was automatically generated"
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotRam [
	"This method was automatically generated"
	^ self & 3 = 2
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isNotRom [
	"This method was automatically generated"
	^ self & 1 = 1
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isOcap [
	"This method was automatically generated"
	^ self & 3 = 3
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isOpaque [
	"This method was automatically generated"
	^ self & 2 = 2
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isPtr [
	"This method was automatically generated"
	^ self & 0 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isRam [
	"This method was automatically generated"
	^ self & 3 = 1
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isRom [
	"This method was automatically generated"
	^ self & 1 = 0
]

{ #category : #'*UForkGT-test' }
SmallInteger >> isTransparent [
	"This method was automatically generated"
	^ self & 2 = 0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> mutable [
	"This method was automatically generated"
	^ self bitAt:61
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notFixnum [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notOcap [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notPtr [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notRam [
	"This method was automatically generated"
	^ self bitAt:60
]

{ #category : #'*UForkGT-access' }
SmallInteger >> notRom [
	"This method was automatically generated"
	^ self bitAt:61
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ocap [
	"This method was automatically generated"
	^ self bitAt:60
]

{ #category : #'*UForkGT-access' }
SmallInteger >> opaque [
	"This method was automatically generated"
	^ self bitAt:60
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ptr [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> ram [
	"This method was automatically generated"
	^ self bitAt:61
]

{ #category : #'*UForkGT-access' }
SmallInteger >> rom [
	"This method was automatically generated"
	^ self bitAt:0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setDirect [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setFixnum [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setImmutable [
	"This method was automatically generated"
	^self & -2 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setIndirect [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setMutable [
	"This method was automatically generated"
	^self & -2 | 1
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotDirect [
	"This method was automatically generated"
	^self & -2147483649
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotFixnum [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotMutable [
	"This method was automatically generated"
	^self & -1073741825
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotOcap [
	"This method was automatically generated"
	^self & -4 | 0
]

{ #category : #'*UForkGT-clear' }
SmallInteger >> setNotOpaque [
	"This method was automatically generated"
	^self & -536870913
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotPtr [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotRam [
	"This method was automatically generated"
	^self & -4 | 2
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setNotRom [
	"This method was automatically generated"
	^self & -2 | 1
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setOcap [
	"This method was automatically generated"
	^self & -4 | 3
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setOpaque [
	"This method was automatically generated"
	^self & -3 | 2
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setPtr [
	"This method was automatically generated"
	^self & -1 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setRam [
	"This method was automatically generated"
	^self & -4 | 1
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setRom [
	"This method was automatically generated"
	^self & -2 | 0
]

{ #category : #'*UForkGT-set' }
SmallInteger >> setTransparent [
	"This method was automatically generated"
	^self & -3 | 0
]

{ #category : #'*UForkGT-access' }
SmallInteger >> transparent [
	"This method was automatically generated"
	^ self bitAt:0
]
