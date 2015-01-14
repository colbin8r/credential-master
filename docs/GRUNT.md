# About This Guide #

This guide documents the different [Grunt](http://gruntjs.com/) tasks available in this project. You should, of course, preface each of these commands with `grunt`. If this is your first time using this project, you should install all the dependencies grunt needs with `npm intall`.

# Main Tasks #

These are the main tasks to use on a day-to-day basis. Generally, they are simply sequences of the other commands string together to fit a certain situation.

## `build` ##

The build task is used to create a production-ready release in `dist` folder.

This task bumps the patch version number. There are variations of this task that bump the major and minor versions instead, and there is a pre-release task for release candidates.

Before the build process begins, your source will also be relinted, recompiled, and retested to avoid building erroneous code.

1. Compile scripts and styles
2. Lint and ensure passing test suite
3. Delete any existing `dist` directory
4. Copy `app` to `dist` (but not source files: .coffee, .sass, .scss, .js, or .css)
5. Read HTML files for script and style assets
6. Concatenate scripts and styles
7. Minify CSS
8. Uglify JS
9. Copy the built scripts and styles into `dist`
10. Remove temporary files
11. Bump verison number (patch number)
12. Generate changelog
13. Generate styleguide

### `build-major` ###

Same as the normal build task, but bumps the major version number for a brand-new release.

### `build-minor` ###

Same as the normal build task, but bumps the minor version number instead.

### `build-prerelease` #

Same as the normal build task in that it bumps the normal patch number, but it also appends or bumps a release-candidate number (e.g. the "-1" in "1.0.0-1") to the version.

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

The docs task gives you a quick look at the documentation and styleguide. It will regenerate a fresh set of documentation before viewing. It serves the docs from a local web server for your viewing pleasure.

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

The watch task is used to watch for changes to scripts, styles, and tests. When you change your source files, the new files are automatically created and updated.

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

## `styleguide` ##

This task forces the regeneration of the styleguide.

## Cleaning ##

These scripts can be used to erase certain folders when they aren't needed.

### `clean:tmp` ###

Delete the `.tmp` directory. The `.tmp` folder is used to house temporary files during the build process, but after the build process completes, the files are no longer needed (they've been further processed and copied elsewhere). This folder can be safely deleted at any time; it is rebuild by the build process every time.

The build process includes a call to this this task.

### `clean:dist` ###

Delete the `dist` directory. The `dist` folder is a complete distribution ready to be implemented live that includes compiled, concatenated, and minified source files (and no transient source files either).

Build script
  Compile
    CoffeeScript
    SCSS
  Minify
    JS
    CSS
    HTML
    Images
  Concatenate
  Run tests
  Bump version
  Changelog
  KSS style guide
  Git commit and tag (or --skip-git?)


