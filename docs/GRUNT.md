# About This Guide #

This guide documents the different [Grunt](http://gruntjs.com/) tasks available in this project. You should, of course, preface each of these commands with `grunt`. If this is your first time using this project, you should install all the dependencies grunt needs with `npm intall`.

# Main Tasks #

These are the main tasks to use on a day-to-day basis. Generally, they are simply sequences of the other commands string together to fit a certain situation.

## `build` ##

The build task is used to create a production-ready release in `dist` folder.

This task bumps the _patch_ version number. There are variations of this task that bump the major and minor versions instead, and there is a pre-release task for release candidates.

Before the build process begins, your source will also be relinted, recompiled, and retested to avoid building erroneous code.

1. Update dependencies in the source (e.g. HTML files, CSS files, etc.)
2. Compile scripts and styles
3. Lint and ensure passing test suite
4. Delete any existing `dist` directory
5. Copy `app` to `dist` (but not source files: .coffee, .sass, .scss, .js, or .css)
6. Concatenate and minify styles
7. Optimize, concatenate, and minify scripts
8. Copy the built scripts and styles into `dist`
9. Remove temporary files
10. Bump verison number (patch number)
11. Generate changelog
12. Generate styleguide

### `build-major` ###

Same as the normal build task, but bumps the _major_ version number for a brand-new release.

### `build-minor` ###

Same as the normal build task, but bumps the _minor_ version number instead.

### `build-prerelease` #

Same as the normal build task in that it bumps the normal patch number (if it's zero), but it also appends or bumps a _release-candidate_ number (e.g. the "-1" in "1.0.0-1") to the version.

## `server` ##

The server task is used to run a webserver so you can view local changes. It's handy when actively developing a project. It also watches local files for changes and compiles them as needed (see the watch task), and it supports live reload so your changes appear without refreshing the page.

Be sure to [have live reload set-up in your HTML](https://github.com/gruntjs/grunt-contrib-watch/blob/master/docs/watch-examples.md#enabling-live-reload-in-your-html).

This task is also the default task (i.e. the task run when you just run `grunt` with no task specified).

1. `compile`
2. Open webserver
3. `watch`

## `test` ##

The test task is used to run the test suite just a single time. To ensure that the compiled code is up to date with the source, the task will recompile all assets--which will also lint the source.

This task is a great way to check if your source:
* is properly linted
* can compile
* passes the test suite

If your code has bugs, this is a great place to start finding them.

## `docs` ##

The docs task gives you a quick look at the documentation and styleguide. It doesn't use a server--it just opens the folder in Google Chrome.

## `bowerRequirejs` ##

This task updates the requirejs configuration to include grunt packages and their dependencies. It should be run every time a new bower package intended to be loaded by requirejs is installed.

# Subroutines #

These are tasks that are often employed by other tasks, but can be safely used as standalone tasks. They can be handy if you aren't going through a typical process for which a main task has already been created (e.g. building a release, developing using a server, etc.)

## `compile` ##

The compile task is used to compile all assets from the `src` folder into the `app` folder.

1. Compile all CoffeeScript scripts
2. Compile all CoffeeScript tests
3. Compile all SCSS styles

## `lint` ##

The lint task is used to lint all scripts, styles, and tests.

1. Lint all CoffeeScript scripts
2. Lint all CoffeeScript tests
3. Lint all SCSS styles

## `watch` ##

The watch task is used to watch for changes to scripts, styles, and tests. When you change your source files, the new files are automatically created and updated. This should probably be used in conjunction with a live development server, but it can be used standalone as well.

**Scripts**  
When a change is detected to a script (excluding test scripts, which are handled slightly differently), the task:

1. Lints the CoffeeScript
2. Compiles the CoffeeScript into JavaScript
3. Runs the test suite

**Styles**  
When a change is detected to a style, the task:
1. Lints the SCSS
2. Compiles the SCSS into CSS

**Tests**  
When a change is detected to a test script, the task:
1. Lints the CoffeeScript test suite
2. Compiles the CoffeeScript test suite into JavaScript
3. Runs the test suite

## Build Subprocesses ##

There are tasks that can mimick parts of the build process without actually comitting or changing version numbers. The most helpfully of these is probably `build-files`.

### `build-files` ###

This task does the heavy lifting of the build process. It produces everything in the distribution directory. You can use this task to generate a distribution directory just like the full `build` task does to ensure everything works as expected.

(It may be handy to clean-up after this task by deleting the distribution directory with `clean:dist`, or by resetting it in version control.)

### `build-documentation` ###

This task generates a fresh set of documentation, including:
- changelog
- styleguide
- converting markdown files in the documentation folder into pretty HTML files

It's used in the final stages of the build process to ensure all documentation is up to date. It might be helpful to use if the documentation is updated, and you want to commit the new versions along with your code.

### `styleguide` ###

This task forces the regeneration of the styleguide.

## Cleaning ##

These tasks can be used to erase (or clean out) certain folders when they aren't needed.

### `clean:tmp` ###

Delete the `.tmp` directory. The `.tmp` folder is used to house temporary files during the build process, but after the build process completes, the files are no longer needed (they've been further processed and copied elsewhere). This folder can be safely deleted at any time; it is rebuild by the build process every time.

The build process includes a call to this this task.

### `clean:dist` ###

Delete the `dist` directory. The `dist` folder is a complete distribution ready to be implemented live that includes compiled, concatenated, and minified source files (and no transient source files either).
