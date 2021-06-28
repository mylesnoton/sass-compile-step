# wercker-sass-compile

![Maintenance](https://img.shields.io/maintenance/no/2016)
[![deprecated](https://badges.github.io/stability-badges/dist/deprecated.svg)](http://github.com/badges/stability-badges)

[![wercker status](https://app.wercker.com/status/c29abad8a57461a72814500ac6210641/m "wercker status")](https://app.wercker.com/project/bykey/c29abad8a57461a72814500ac6210641)

Warning: Wercker has updated their platform to use docker instead, if the old platform still exists you should look at migrating rather than using this step.

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