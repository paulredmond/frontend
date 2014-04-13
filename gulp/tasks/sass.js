var gulp = require('gulp');
var sass = require('gulp-ruby-sass');

module.exports = function () {
    gulp.src('./src/sass/app.scss')
        .pipe(sass({
            sourcemap: true,
            bundleExec: true
        }))
        .pipe(gulp.dest('./build'));
    gulp.src('./src/sass/styleguide.scss')
        .pipe(sass({
            sourcemap: true,
            bundleExec: true
        }))
        .pipe(gulp.dest('./build'));
};
