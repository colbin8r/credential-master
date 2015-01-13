module.exports =
	sample:
		options:
			port: 8000
			hostname: 'localhost'
			base: 'app'
			open: true
	test:
		options:
			open: false
			port: 3000
			base: [
				'test',
				'<%= config.app %>'
			]
