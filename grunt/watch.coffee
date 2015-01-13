module.exports =
	coffee:
		files: [
			'<%= config.app %>/scripts/{,*/}*.{coffee,litcoffee,coffee.md}',
			'<%= config.test %>/spec/{,*/}*.{coffee,litcoffee,coffee.md}'
		]
		tasks: ['coffee:compile']
		options:
			spawn: no
	test:
		files: [
			'<%= config.app %>/scripts/{,*/}*.js',
			'<%= config.test %>/spec/{,*/}*.js'
		]
		tasks: ['mochaTest']
		options:
			spawn: no
