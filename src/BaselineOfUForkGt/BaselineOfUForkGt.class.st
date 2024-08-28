Class {
	#name : #BaselineOfUForkGt,
	#superclass : #BaselineOf,
	#category : #BaselineOfUForkGt
}

{ #category : #baseline }
BaselineOfUForkGt >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'UForkGt'
		]
]
