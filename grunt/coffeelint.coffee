module.exports =
	options:
		configFile: 'coffeelint.json'
	scripts: '<%= config.src %>/scripts/{,*/}*.{coffee,litcoffee,coffee.md}'
	tests: '<%= config.test %>/spec/{,*/}*.{coffee,litcoffee,coffee.md}'

# coffeelint: {
#       options: {
#         configFile: 'coffeelint.json'
#       }
#     },
