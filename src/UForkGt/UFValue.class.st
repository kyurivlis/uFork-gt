Class {
	#name : #UFValue,
	#superclass : #BlBitflags,
	#category : #UForkGt
}

{ #category : #'accessing - flags' }
UFValue class >> Direct [
	"This method was automatically generated"
	^ Direct value
]

{ #category : #'accessing - flags' }
UFValue class >> Mutable [
	"This method was automatically generated"
	^ Mutable value
]

{ #category : #'accessing - flags' }
UFValue class >> Opaque [
	"This method was automatically generated"
	^ Opaque value
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagClearAccesorFor: flagName [
	| code |
	
	code := 'addNot', flagName, '
	"This method was automatically generated"
	value := value & (', flagName, ' value bitInvert)'.

	self 
		compile: code 
		classified: self generatedFlagsClearProtocolName
]

{ #category : #'flags declaration' }
UFValue class >> flagsDecl [
	"
	self rebuildFlagsAccessors
	"
	^{#direct -> (0 bitAt: 32 put: 1).
	  #mutable -> (0 bitAt: 31 put: 1).
	  #opaque -> (0 bitAt: 30 put: 1)}
]

{ #category : #initalization }
UFValue class >> initialize [
	super initialize
]

{ #category : #private }
UFValue class >> rebuildFlagsAccessors [
	self flagsDictionary keysDo: [ :each | 
		self defineFlagAccesorFor: each.
		self defineFlagTestAccesorFor: each.
		self defineFlagClearAccesorFor: each.
		self defineFlagAddAccesorFor: each ]
]

{ #category : #'flags - add' }
UFValue >> addDirect [
	"This method was automatically generated"
	value := value | Direct value
]

{ #category : #'flags - add' }
UFValue >> addMutable [
	"This method was automatically generated"
	value := value | Mutable value
]

{ #category : #'flags - clear' }
UFValue >> addNotDirect [
	"This method was automatically generated"
	value := value & (Direct value bitInvert)
]

{ #category : #'flags - clear' }
UFValue >> addNotMutable [
	"This method was automatically generated"
	value := value & (Mutable value bitInvert)
]

{ #category : #'flags - clear' }
UFValue >> addNotOpaque [
	"This method was automatically generated"
	value := value & (Opaque value bitInvert)
]

{ #category : #'flags - add' }
UFValue >> addOpaque [
	"This method was automatically generated"
	value := value | Opaque value
]

{ #category : #'flags - clear' }
UFValue >> clearDirect [
	"This method was automatically generated"
	value := value & (Direct value bitInvert)
]

{ #category : #'flags - clear' }
UFValue >> clearMutable [
	"This method was automatically generated"
	value := value & (Mutable value bitInvert)
]

{ #category : #'flags - clear' }
UFValue >> clearOpaque [
	"This method was automatically generated"
	value := value & (Opaque value bitInvert)
]

{ #category : #'flags - testing' }
UFValue >> hasDirect [
	"This method was automatically generated"
	^ (value & Direct value) ~= 0
]

{ #category : #'flags - testing' }
UFValue >> hasMutable [
	"This method was automatically generated"
	^ (value & Mutable value) ~= 0
]

{ #category : #'flags - testing' }
UFValue >> hasOpaque [
	"This method was automatically generated"
	^ (value & Opaque value) ~= 0
]
