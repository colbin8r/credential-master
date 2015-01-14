module.exports = 
    # options:
    src:
        options:
            name: 'Credential Master Styleguide'
            framework:
                name: 'kss'
                # options:
                #     'sass': yes

        files:
            '<%= config.docs %>/gen/styleguide': '<%= config.src %>/styles/**.scss' # file extension forces Sass recognition
