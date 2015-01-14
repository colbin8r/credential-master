module.exports =
    options:
        mangle: no
    # scripts:
    #   expand: yes
    #   flatten: no
    #   cwd: '<%= config.app %>/scripts',
    #   src: '{,*/}*.js',
    #   dest: '<%= config.app %>/scripts',
    #   ext: '.min.js',
    scripts:
        files: [
            {
                dest: '<%= config.dist %>/scripts/build.js'
                src: '<%= config.tmp %>/scripts/build.js'
            }
        ]
