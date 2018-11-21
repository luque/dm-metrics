public api
instability
	"This metric has a range [0,1]:
	    0 indicates a maximally stable package. 
	    1 indicates a maximaly instable package."

	(self efferentCoupling = 0
		and: self afferentCoupling = 0)
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ (self efferentCoupling / (self efferentCoupling + self afferentCoupling)) asFloat ]