module.exports =
	options:
		jshintrc: '.jshintrc'
		reporter: require 'jshint-stylish'
	all: [
		'Gruntfile.js',
		'<%= config.app %>/scripts/{,*/}*.js',
		'!<%= config.app %>/scripts/vendor/*',
		'!<%= config.app %>/scripts/require.js',
		'test/spec/{,*/}*.js'
	]
