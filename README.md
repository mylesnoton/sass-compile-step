# sass-compile

Compile all sass files in a directory into CSS files


## Options

* `source-dir`: (required) The directory of your sass files
* `output-dir`: (required) The directory you want to output .css files into
* `output-style`: The output style of the css file. Options are: nested, expanded, compact, compressed (default)
* `sourcemap`: Should sourcemaps be generated? Options are auto, file, inline, none (default)


## Dependencies

* Ruby


## Example

Add this as a step in wercker.yml file:

    - sass-compile:
        source-dir: $WERCKER_ROOT/public/css/sass/
        output-dir: $WERCKER_ROOT/public/css/


## Changelog

### 0.0.1

- Initial release