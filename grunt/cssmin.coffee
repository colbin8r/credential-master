module.exports =
	styles:
		expand: yes
		flatten: no
		cwd: '<%= config.app %>/styles',
		src: '{,*/}*.css',
		dest: '<%= config.app %>/styles',
		ext: '.min.css'
