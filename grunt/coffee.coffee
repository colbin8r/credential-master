module.exports =
	scripts:
		expand: yes
		flatten: no
		cwd: '<%= config.src %>/scripts',
		src: '{,*/}*.{coffee,litcoffee,coffee.md}',
		dest: '<%= config.app %>/scripts',
		ext: '.js',
	tests:
		expand: yes
		flatten: no
		cwd: '<%= config.test %>/spec',
		src: '{,*/}*.{coffee,litcoffee,coffee.md}',
		dest: '<%= config.test %>/compiled',
		ext: '.js',
