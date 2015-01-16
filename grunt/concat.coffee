module.exports =
    all:
        files: [
            {
                dest: '<%= config.tmp %>/scripts/build.js'
                src: '<%= config.app %>/scripts/**'
            },
            {
                dest: '<%= config.tmp %>/styles/build.js'
                src: '<%= config.app %>/styles/**'
            }
        ]
    # scripts:
    #     files: [
    #         {
    #             dest: '<%= config.tmp %>/scripts/build.js'
    #             src: '<%= config.app %>/scripts/**'
    #         }
    #     ]
