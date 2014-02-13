module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    connect:
      server:
        options:
          livereload: true
          port: 8000

    watch:
      files: [ 'app/scripts/**/*.coffee', 'app/stylesheets/**/*.scss','app/main.html' ]

      options:
        livereload: true

  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.loadNpmTasks('grunt-contrib-watch')

  grunt.registerTask 'default',[
    'connect:server'
    'watch'
  ]

  return