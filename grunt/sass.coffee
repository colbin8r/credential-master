module.exports =
	options:
		sourcemap: 'none'
		style: 'expanded' # nested, compact, compressed, expanded
	styles:
		expand: yes
		flatten: no
		cwd: '<%= config.src %>/styles',
		src: '{,*/}*.{scss,sass}',
		dest: '<%= config.app %>/styles',
		ext: '.css',
