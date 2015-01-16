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
            },
            # the project readme, which is kept outside of the 'docs' folder in the root directory
            {
                src: 'README.md'
                dest: '<%= config.docs %>/gen/README.html'
            }
        ]
