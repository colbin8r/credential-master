module.exports =
	dist:
		files: [
			{
				expand: yes
				# flatten: no
				cwd: '<%= config.app %>',
				src: [
					'{,*/}*.*',
					'!{,*/}*.{coffee,sass,scss,js,css}',
				]
				dest: '<%= config.dist %>'
			}
		]
	# dist:
	# 	files: [
	# 		# copies the minified scripts
	# 		{
	# 			expand: yes
	# 			cwd: '<%= config.app %>/scripts'
	# 			src: '{,*/}*.{min.js,js}',
	# 			dest: '<%= config.dist %>/scripts',
	# 			ext: '.js',
	# 		},
	# 		# copies the minified styles
	# 		{
	# 			expand: yes
	# 			cwd: '<%= config.app %>/styles'
	# 			src: '{,*/}*.{min.css,css}',
	# 			dest: '<%= config.dist %>/styles',
	# 			ext: '.css',
	# 		},
	# 		# copies all files except source files and scripts/styles (already copied above)
	# 		{
	# 			expand: yes
	# 			# flatten: no
	# 			cwd: '<%= config.app %>',
	# 			src: [
	# 				'{,*/}*.*',
	# 				'!{,*/}*.{coffee,sass,scss,js,css}',
	# 			]
	# 			dest: '<%= config.dist %>'
	# 		}
	# 	]
