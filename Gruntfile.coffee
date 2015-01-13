# Uses the load-grunt-config library to split up the Gruntfile into the grunt/ directory
module.exports = (grunt) -> require('load-grunt-config') grunt,
    data:
    	config:
    		app: 'app'
    		test: 'test'
    # loadGruntTasks:
    # 	pattern: 'grunt-*'
    # 	config: require './package.json'
    # 	scope: 'devDependencies'
