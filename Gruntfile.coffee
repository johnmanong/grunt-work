module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json'),
    connect:
      server:
        options:
          livereload: true,
          port: 8000

    watch:

    sass:

    coffee:

  grunt.loadNpmTasks('grunt-contrib-connect')