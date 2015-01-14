module.exports =
	options:
		config: 'scsslint.yml'
		colorizeOutput: yes
		compact: yes
		reporterOutput: null
		# emitError: yes
		bundleExec: yes # be sure to run 'bundle install' before your first time
	styles: '<%= config.src %>/styles/{,*/}*.{sass,scss}'
