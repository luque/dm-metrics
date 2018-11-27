rendering
render
	| from to |
	from := builder getPixelPositionOf: (0 @ 1).
	to := builder getPixelPositionOf: (1 @ 0).
	self lineFrom: from to: to