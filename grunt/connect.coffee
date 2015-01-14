module.exports =
	server:
		options:
			port: 8000
			hostname: 'localhost'
			base: '<%= config.app %>'
			open: true
	docs:
		options:
			hostname: 'localhost'
			base: '<%= config.docs %>/gen'
			open: true
			keepalive: true
	# test:
	# 	options:
	# 		open: false
	# 		port: 3000
	# 		base: [
	# 			'test',
	# 			'<%= config.app %>'
	# 		]
