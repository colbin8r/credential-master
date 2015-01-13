module.exports =
	scripts:
		expand: yes
		flatten: no
		cwd: '<%= config.app %>/scripts',
		src: '{,*/}*.{coffee,litcoffee,coffee.md}',
		dest: '<%= config.app %>/scripts',
		ext: '.js',
	tests:
		expand: yes
		flatten: no
		cwd: '<%= config.test %>/',
		src: '{,*/}*.{coffee,litcoffee,coffee.md}',
		dest: '<%= config.test %>/',
		ext: '.js',
