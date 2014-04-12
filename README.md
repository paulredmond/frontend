# Frontend Starter Kit

Frontend starter kit

Getting Started
===============

Install stuff
```console
npm install
```

Start the frontend (builds, watches, opens)

```console
node_modules/.bin/gulp
```

Tasks
```console
gulp # all the things
gulp build (alias of gulp browserify)
gulp browserify
gulp open
gulp serve
gulp watch
```

This is a nice trick for running bins
```console
# Add to your path
alias npm-exec='PATH=$(npm bin):$PATH'
# run as npm-exec
npm-exec gulp build
```
