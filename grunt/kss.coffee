module.exports =
    options:
        # template: '<%= config.src %>/styleguide'
        preprocessor: 'sass'
    styleguide:
        files:
            '<%= config.docs %>/styleguide': ['<%= config.src %>/styles']
            # src: '<%= config.src %>/styles'
            # dest: '<%= config.docs %>/styleguide'
