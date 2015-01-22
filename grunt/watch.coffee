module.exports =
	scripts:
		files: [
			'<%= config.src %>/scripts/{,*/}*.{coffee,litcoffee,coffee.md}'
		]
		tasks: ['coffeelint:scripts', 'coffee:scripts']
		options:
			spawn: no
			livereload: yes
	styles:
		files: [
			'<%= config.src %>/styles/{,*/}*.{sass,scss}'
		]
		tasks: ['scsslint:styles', 'sass:styles']
		options:
			spawn: no
			livereload: yes
	testsCompile:
		files: [
			'<%= config.test %>/spec/{,*/}*.{coffee,litcoffee,coffee.md}'
		]
		tasks: ['coffeelint:tests', 'coffee:tests']
		options:
			spawn: no
	testsRun:
		files: [
			# '<%= config.app %>/scripts/{,*/}*.js',
			'<%= config.src %>/scripts/{,*/}*.{coffee,litcoffee,coffee.md}',
			'<%= config.test %>/spec/{,*/}*.{coffee,litcoffee,coffee.md}'
		]
		tasks: ['mochaTest']
		options:
			spawn: no
	index:
		files: [
			'<%= config.app %>/index.html',
		]
		options:
			livereload: yes
