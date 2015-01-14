module.exports =
    app:
        src: [
            '<%= config.app %>/**/*.html'       # html support
        ]
    src:
        src: [
            '<%= config.src %>/styles/**/*.scss'       # scss support
        ]
        # options:
        #     fileTypes:
        #         scss:
        #             # block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
        #             # detect:
        #             #     css: /@import\s['"](.+css)['"]/gi
        #             #     sass: /@import\s['"](.+sass)['"]/gi
        #             #     scss: /@import\s['"](.+scss)['"]/gi
        #             replace:
        #                 css: "@import '{{filePath}}';"
        #                 sass: "@import '{{filePath}}';"
        #                 scss: "@import '{{filePath}}';"
