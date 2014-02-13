module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    connect:
      server:
        options:
          livereload: true
          port: 8000

    watch:
      options:
        livereload: true
      scripts:
        files: [ 'app/scripts/**/*.coffee', 'app/main.html' ]
        tasks: [ 'coffee']
      css:
        files: [ 'app/stylesheets/**/*.scss']
    coffee:
      glob_to_multiple:
        expand: true
        flatten: false
        cwd: 'app/scripts'
        src: ['**/*.coffee']
        dest: 'app/scripts/build'
        ext: '.js'

  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')

  grunt.registerTask 'default',[
    'coffee:glob_to_multiple'
    'connect:server'
    'watch'
  ]

  return