module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({

    imagemin: {
      dynamic: {
        files: [{
          expand: true,
          cwd: 'en-US/images/precompressed/',
          src: ['*.{png,jpg,gif,JPG,PNG,GIF,jpeg}'],
          dest: 'en-US/images/'
        }]
      }
    },

    notify: {
      imagemin: {
        options: {
          title: 'Images are ready!',
          message: 'Your images are successfully compressed.'
        }
      }
    }

  });

  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-notify');

  grunt.registerTask('default', ['imagemin', 'notify:imagemin']);

};