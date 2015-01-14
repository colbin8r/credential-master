# Uses the load-grunt-config library to split up the Gruntfile into the grunt/ directory
module.exports = (grunt) -> require('load-grunt-config') grunt,
    data:
        config:
            app: 'app'
            test: 'test'
            src: 'src'
            dist: 'dist'
            docs: 'docs'
            tmp: '.tmp'
    # loadGruntTasks:
    #   pattern: 'grunt-*'
    #   config: require './package.json'
    #   scope: 'devDependencies'
