Class {
	#name : #UFValue,
	#superclass : #BlBitflags,
	#category : #UForkGt
}

{ #category : #'private - protocol' }
UFValue class >> accessProtocol [
	^#'*UForkGT-access'
]

{ #category : #'private - protocol' }
UFValue class >> clearProtocol [
	^#'*UForkGT-clear'
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagAccesFor: flagName mask: flagMask [
	"Define accessors as class methods"
	^(flagName asLowercase, '
	"This method was automatically generated"
	^ self bitAt:', (flagMask bitString findString: '1') asString) -> self accessProtocol.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagClearFor: flagName mask: flagMask [
	^('setNot', flagName, '
	"This method was automatically generated"
	^self & ', flagMask bitInvert asString) -> self clearProtocol.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagSetFor: flagName mask: flagMask [
	^('set', flagName, '
	"This method was automatically generated"
	^self & ', flagMask asString) -> self setProtocol.
]

{ #category : #'private - instance code' }
UFValue class >> defineFlagTestAbsenceFor: flagName mask: flagMask [
	^('is', flagName, '
	"This method was automatically generated"
	^ self & ', flagMask asString, ' ~= 0') -> self testAbsenceProtocol.

]

{ #category : #'private - instance code' }
UFValue class >> defineFlagTestPresenceFor: flagName mask: flagMask [
	^ ('is' , flagName
		, '
	"This method was automatically generated"
	^ self & ' , flagMask asString , ' ~= 0') -> self testPresenceProtocol
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
	self flagsDictionary
		keysAndValuesDo: [ :flag :mask | 
			| m |
			m := UFValue class methods
					select: [ :me | me protocol = #'private - instance code' ].
			m
				do: [ :met | 
					| md |
					md := UFValue
							perform: met selector
							with: flag
							with: mask.
					SmallInteger compile: md key classified: md value ] ]
]

{ #category : #'private - protocol' }
UFValue class >> setProtocol [
	^#'*UForkGT-set'
]

{ #category : #'private - protocol' }
UFValue class >> testAbsenceProtocol [
	^#'*UForkGT-absence'
]

{ #category : #'private - protocol' }
UFValue class >> testPresenceProtocol [
	^ #'*UForkGT-presence'
]
