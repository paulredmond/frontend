var gulp       = require('gulp');

module.exports = function () {
    gulp.watch('src/js/**/*', ['browserify']);
    gulp.watch('src/sass/**/*', ['sass']);
};
