module.exports =
	options:
		files: ['package.json', 'bower.json']
		# updateConfigs: ['pkg', 'component']
		commit: no
		# commitMessage: 'Release %VERSION%'
		# commitFiles: ['-a']
		createTag: no
		# tagName: '%VERSION%'
		# tagMessage: 'Version %VERSION%'
		push: no
		# pushTo: 'upstream'
		globalReplace: yes # defaults to false, which is only the first occurrence
		
	# can use:
	# grunt bump
	# grunt bump:patch
	# grunt bump:minor
	# grunt bump:major
	# grunt bump:prelease
	# grunt bump:git
	# grunt bump --setversion=0.0.0
	# grunt bump-only:(minor/patch/etc.) with grunt bump-commit
