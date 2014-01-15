module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig

    # Use multiple CPU-Cores to speed up processing time
    concurrent:
      compile: ['sass', 'newer:uglify']
      js: ['newer:uglify']


    # Minify JavaScript-Files
    uglify:
      build:
        files:
          'src/js/libs/least/least.min.js':    ['src/js/libs/least/least.js']
        options:
          compress: true
          mangle: false
          report: "min"
          verbose: true


    # Compile SASS-Files
    sass:
      build:
        files:
          'src/css/least.min.css': 'src/scss/styles.scss'
        options:
          style: 'compressed'

    # Watch JavaScript and SASS-Files for changes
    watch:
      js:
        files: ['src/js/libs/least/*.js']
        tasks: ['concurrent:js']
      scss:
        files: ['src/scss/**/*.scss']
        tasks: ['sass']
      livereload:
        files: ['src/css/*']
        options:
          livereload: false
          #spawn: false

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-newer'

  # Default task(s).
  grunt.registerTask 'default', ['concurrent:compile']