
JS_FILES = {
  'app/scripts/build/main.js': ['app/scripts/**/*.js']
}


module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    connect:
      server:
        options:
          base: 'app/'
          livereload: true
          port: 8000

    watch:
      options:
        livereload: true
      scripts:
        files: [
          'app/scripts/**/*.coffee'
          'app/index.html'
          'app/scripts/**/*.js'
          '!app/scripts/build/**'
        ]
        tasks: [ 'coffee' ]
      css:
        files: [ 'app/stylesheets/**/*.scss']
        tasks: [ 'sass' ]

    coffee:
      glob_to_multiple:
        expand: true
        flatten: false
        cwd: 'app/scripts'
        src: ['**/*.coffee']
        dest: 'app/scripts/build'
        ext: '.js'
        options:
          sourceMap: true

    browserify:
      dev:
        options:
          debug: true
          transform: [ ]
        files: JS_FILES
      prod:
        options:
          debug: false
          transform: [ ]
        files: JS_FILES

    sass:
      dist:
        options:
          sourcemap: true
        files: [
          expand: true
          cwd: 'app/stylesheets'
          src: ['**/*.scss']
          dest: 'app/stylesheets/build'
          ext: '.css'
        ]

  grunt.loadNpmTasks('grunt-browserify');
  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-sass')



  grunt.registerTask 'default',[
    'browserify:dev'
    'sass:dist'
    'connect:server'
    'watch'
  ]

  grunt.registerTask 'coffee',[
    'coffee:glob_to_multiple'
    'sass:dist'
    'connect:server'
    'watch'
  ]

  return