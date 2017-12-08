'use strict';

import gulp from 'gulp';
import babelify from 'babelify';
import browserify from 'browserify';
import source from 'vinyl-source-stream';

gulp.task("scripts", () => {
    return browserify({
            entries: ["./app/assets/scripts/main.js"]
        })
        .transform(babelify.configure({
            presets: ["es2015"]
        }))
        .bundle()
        .pipe(source("bundle.js"))
        .pipe(gulp.dest("./app/assets/build/js"))
});


gulp.task('watch', () => {
    gulp.watch(['./app/assets/scripts/*.js'], ['scripts']);
});

gulp.task("build", ["scripts"]);
gulp.task("dev", ["watch"]);