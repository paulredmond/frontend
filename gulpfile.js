var gulp = require('./gulp')([
    'browserify',
    'watch',
    'open',
    'serve'
]);

gulp.task('build', ['browserify']);
gulp.task('default', ['build', 'watch', 'serve', 'open']);
