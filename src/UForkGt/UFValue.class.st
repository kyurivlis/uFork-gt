Class {
	#name : #UFValue,
	#superclass : #BlBitflags,
	#category : #UForkGt
}

{ #category : #'private - instance code' }
UFValue class >> defineFlagAccesorFor: flagName mask: flagMask [
	"Define accessors as class methods"
	^flagName asLowercase, '
	"This method was automatically generated"
	^ self bitAt:', (flagMask bitString findString: '1') asString.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagSetAccesorFor: flagName mask: flagMask [
	^'set', flagName, '
	"This method was automatically generated"
	^self & ', flagMask asString.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagSetNotAccesorFor: flagName mask: flagMask [
	^'setNot', flagName, '
	"This method was automatically generated"
	^self & ', flagMask bitInvert asString.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagTestAccesorFor: flagName mask: flagMask [
	^'is', flagName, '
	"This method was automatically generated"
	^ self & ', flagMask asString, ' ~= 0'.

]

{ #category : #'private - instance code' }
UFValue class >> defineFlagTestNotAccesorFor: flagName mask: flagMask [
	^'isNot', flagName, '
	"This method was automatically generated"
	^ self & ', flagMask bitInvert asString, ' ~= 0'.
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
]

{ #category : #private }
UFValue class >> rebuildFlagsAccessors [
	self flagsDictionary keysAndValuesDo: [ :flag :mask | 
	|m|
	m:=UFValue class methods select: [:me |me protocol = #'private - instance code'].
	m do: [:met | SmallInteger compile: (UFValue perform: met selector with: flag with: mask) classified: #'*UForkGT']
	]
]
