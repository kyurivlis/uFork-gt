Class {
	#name : #QuadCell,
	#superclass : #WordArray,
	#type : #words,
	#category : #UForkGt
}

{ #category : #'instance  creation' }
QuadCell class >> new [ 
	^super new: 4
]

{ #category : #'instance  creation' }
QuadCell class >> new: aNum [
	^self shouldNotImplement
]

{ #category : #example }
QuadCell class >> valueTypeHierarchy [
	<gtExample>
	|m|
	m:= GtMondrian new.
	^m
]
