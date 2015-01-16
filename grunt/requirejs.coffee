module.exports = 
    dist:
        options:
            wrap: yes
            almond: yes
            baseUrl: '<%= config.app %>/scripts'
            include: 'main' # scripts/main.js is the primary entry point and is included
            name: '../../bower_components/almond/almond'
            mainConfigFile: '<%= config.app %>/scripts/require-config.js'
            out: '<%= config.dist %>/scripts/min.js'
