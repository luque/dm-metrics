accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'DMM-Core';
				package: 'DMM-Core-Tests';
				package: 'DMM-Visualizations'.
			spec group: 'default' with: #('DMM-Core' 'DMM-Core-Tests' 'DMM-Visualizations') ]