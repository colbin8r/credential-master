module.exports =
	all:
		options:
			reporter: 'spec'
			clearRequireCache: yes
			# run: yes
			# require: 'coffee-script/register'
		src: ['<%= config.test %>/**/*.js']
