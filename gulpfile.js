var gulp = require('./gulp')([
    'browserify',
    'sass',
    'watch',
    'open',
    'serve'
]);

gulp.task('build', ['browserify', 'sass']);
gulp.task('default', ['build', 'watch', 'serve', 'open']);
