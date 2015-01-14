module.exports = 
    docs:
        options:
            template: '<%= config.docs %>/markdown-template.html'
        files: [
            {
                expand: yes
                cwd: '<%= config.docs %>'
                src: '{,*/}*.{md,markdown,mdown,MD}'
                dest:'<%= config.docs %>/gen'
                ext: '.html'
            }
        ]
