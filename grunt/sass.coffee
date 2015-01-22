module.exports =
	options:
		sourcemap: 'none'
		style: 'expanded' # nested, compact, compressed, expanded
		cacheLocation: '<%= config.cache %>/.sass-cache'
	styles:
		expand: yes
		flatten: no
		cwd: '<%= config.src %>/styles',
		src: '{,*/}*.{scss,sass}',
		dest: '<%= config.app %>/styles',
		ext: '.css',
		options:
			loadPath: ['<%= config.src %>/styles', 'bower_components']
