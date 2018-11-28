accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'https://github.com/luque/dm-metrics'.
			self projectRoassal: spec.
			self definitionOfDMMetrics: spec.
			self groupsDMMetrics: spec ]