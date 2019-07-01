# Change Log

All notable changes to this project will be documented in this file. This
project adheres to [Semantic Versioning](http://semver.org).

## [Unreleased (`master`)][unreleased]

### Added

- Added variables for all font weights
- Added CSS to make `input[type="search"]` behave as a textfield in Safari

### Changed

- Changed project Sass variables to native CSS variables
- Changed variables name structures:
  - Remove "`base`" from CSS vars (`--base-font-family` to `--font-family`)
  - Placing the modifier after the noun instead of before. Example: `--font-family--heading`
  - Separating the modifier and noun with 2 dashes. Example: `--font-weight--extra-light`
- Changed the default border to use `currentColor`
- Changed remaining pixel (`px`) values to `rem`s

### Removed

- Removed unused `base-z-index` variable
- Removed unused `medium-gray` variable
- Removed unused `gray-light` variable
- Removed [Bourbon] dependency

[unreleased]: https://github.com/thoughtbot/bitters/compare/v1.8.0...HEAD
[Bourbon]: https://github.com/thoughtbot/bourbon

## [1.8.0] - 2018-02-05

### Added

- Added `$_form-background-color` for setting the `background-color` of text
  inputs. ([#296])

### Changed

- Form text inputs now use `$_form-background-color` instead of
  `$base-background-color` as their `background-color`. ([#296])
- `$base-background-color` is now `$viewport-background-color` and is used to
  set the `background-color` of the `html` element. ([#296])
- Updated Bourbon dependency from `5.0.0.beta.7` to `5.0`. ([#299])

### Removed

- `$secondary-background-color` has been removed (it was not used for setting
  any values. ([#296])

[1.8.0]: https://github.com/thoughtbot/bitters/compare/v1.7.0...v1.8.0
[#296]: https://github.com/thoughtbot/bitters/pull/296
[#299]: https://github.com/thoughtbot/bitters/pull/299

## [1.7.0] - 2017-06-30

### Changed

- `table` styles have been improved with left text-alignment throughout the
  whole table, bottom vertical-alignment within the `thead`, top
  vertical-alignment within the `tbody`, right padding within each cell and
  borders being set on the `tr`s. ([#288])
- The value of `$base-spacing` is no longer derived from `$base-line-height`.
  ([#292])
- The color of button text is now set using Bourbon's
  [`contrast-switch`][contrast-switch] function, to automatically ensure
  sufficient contrast against the button's background color. ([#294])

### Removed

- Remove unused `$medium-screen` and `$large-screen` breakpoint
  variables. ([#285])

[1.7.0]: https://github.com/thoughtbot/bitters/compare/v1.6.0...v1.7.0
[#285]: https://github.com/thoughtbot/bitters/pull/285
[#288]: https://github.com/thoughtbot/bitters/pull/288
[#292]: https://github.com/thoughtbot/bitters/pull/292
[#294]: https://github.com/thoughtbot/bitters/pull/294
[contrast-switch]: https://www.bourbon.io/docs/latest/#contrast-switch

## [1.6.0] - 2017-05-12

### Added

- Set `margin` to `0` on the `body` element. ([#280])
- Global variables for the styling of focus outlines. ([#284])

### Changed

- Component/feature-specific variables have been moved into their respective
  partials, rather than in the global variables partial. They have also been
  prefixed with an underscore to indicate they are "private" to that
  partial. ([#275])
- Base typography is now styled off of the `html` element, instead of the `body`
  element. ([#279])
- `a` elements no longer have `text-decoration` set to `none`. They also now
  have `text-decoration-skip` set to `ink`. ([#283])
- The visual style of outlines on focused elements (`a`, `$all-buttons`,
  `[type="checkbox"]`, `[type="radio"]`, `[type="file"]`, `select`) is now solid
  and offset from the element. ([#284])

### Removed

- Removed `$base-font-size` in favor of more specific implementations specific
  to the particular object being modified. ([#272])

[1.6.0]: https://github.com/thoughtbot/bitters/compare/v1.5.0...v1.6.0
[#272]: https://github.com/thoughtbot/bitters/pull/272
[#275]: https://github.com/thoughtbot/bitters/pull/275
[#279]: https://github.com/thoughtbot/bitters/pull/279
[#280]: https://github.com/thoughtbot/bitters/pull/280
[#283]: https://github.com/thoughtbot/bitters/pull/283
[#284]: https://github.com/thoughtbot/bitters/pull/284

## [1.5.0] - 2016-11-08

### Changed

- Updated Bourbon dependency to `5.0.0.beta.7`.

[1.5.0]: https://github.com/thoughtbot/bitters/compare/v1.4.0...v1.5.0

## [1.4.0] - 2016-08-10

### Added

- Added `text-align: center;` to buttons.
- Added `width: 100%;` to `select` elements.
- Added `appearance: none;` to text inputs.
- Added `height: 100%;` to `html` and `body` elements.

### Changed

- Changed the text color for `::placeholder` styles to be based on
  `$base-font-color` instead of using `$medium-gray`.

### Removed

- Removed `select[multiple]` selector.

[1.4.0]: https://github.com/thoughtbot/bitters/compare/v1.3.2...v1.4.0

## [1.3.2] - 2016-06-21

### Added

- Added `::placeholder` styles for forms.

### Fixed

- Fixed file permissions on the core Sass files.

### Changed

- Update Bourbon dependency to 5.0.0.beta.6.

[1.3.2]: https://github.com/thoughtbot/bitters/compare/v1.3.1...v1.3.2

## [1.3.1] - 2016-03-04

### Fixed

- Fixed an issue with the Bitters executable which broke using the Bitters CLI
  to install the Bitters files.

### Changed

- Update Bourbon dependency to 5.0.0.beta.3.

[1.3.1]: https://github.com/thoughtbot/bitters/compare/v1.3.0...v1.3.1

## [1.3.0] - 2016-03-03

### Added

- Added `margin: 0;` to `dl` and `dt` elements in `_lists.scss`.
- Set global `box-sizing` to `border-box`.
- Added `figure` styles, setting `margin: 0;`.

### Changed

- Moved Bitters’ core Sass files from the `app/assets/stylesheets/` directory to
  a `core/` directory.
- Un-nested `dt` and `dd` elements outside the `dl` declaration
  in `_lists.scss`.
- Consolidated input styles and selectors.
- Increased the font size on headings.
- Update Bourbon dependency to 5.0.0.beta.1.
- Changed `$base-font-family` from Helvetica to system fonts.
- Moved `img` and `picture` styles to a `_media.scss` partial.
- Changed the `margin-bottom` on `select` elements from `$base-spacing` to
  `$small-spacing`.

### Removed

- Removed grid settings for [Neat], which includes removal of the following
  variables:
  - `$medium-screen-up`
  - `$large-screen-up`
  - `$column`
  - `$gutter`
  - `$grid-columns`
  - `$max-width`

[1.3.0]: https://github.com/thoughtbot/bitters/compare/v1.2.0...v1.3.0
[Neat]: https://github.com/thoughtbot/neat

## [1.2.0] - 2016-01-04

### Added

- Added base `legend` styles.

### Fixed

- Fixed the `select` `multiple` selector syntax.

### Changed

- Darkened the color value of `$blue` to improve contrast.
- `background-color`, `border`, `margin` and `padding` are now “cleared” on
  the `fieldset` element.
- Changed input selectors to be less-specific:
  - `input[type="search"]` is now `[type="search"]`
  - `input[type="checkbox"]` is now `[type="checkbox"]`
  - `input[type="radio"]` is now `[type="radio"]`
  - `input[type="file"]` is now `[type="file"]`

### Removed

- Removed `font-feature-settings` from `table` and `body`.
- Removed placeholder selectors for default list styling: `%default-ul`
  & `%default-ol`.
- `abbr` elements within `label` elements are no longer hidden.
- `label`’s with a class of `required` no longer have an `*` inserted via
  `content` to the `::after` pseudo element.
- `label` siblings of `input[type="checkbox"]` and `input[type="radio"]`
  elements are no longer set to `display: inline-block;`.

[1.2.0]: https://github.com/thoughtbot/bitters/compare/v1.1.0...v1.2.0

## [1.1.0] - 2015-08-28

### Added

- Added a `$secondary-background-color` variable.
- Added `:disabled` styles for text inputs.
- Added `$base-duration` and `$base-timing` variables.
- Added `display: inline-block;` to `label` siblings of `input[type="checkbox"]`
  and `input[type="radio"]` elements.

### Changed

- Swapped `padding-bottom` for `margin-bottom` on the `input[type="file"]`
  selector.
- Changed values for the `$max-width`, `$medium-screen` and `$large-screen`
  variables.
- Padding on button elements was tweaked.

### Removed

- Dropped support for Sass versions below than 3.4.
- Dropped support for LibSass versions below than 3.0.
- Dropped support for Bourbon versions below than 4.2.
- Removed prefixes for `appearance` and `font-feature-settings`.
- Removed `-webkit-font-smoothing` on `body`.
- Removed `outline: none;` on `:active` and `:focus` on `a` elements.

[1.1.0]: https://github.com/thoughtbot/bitters/compare/v1.0.0...v1.1.0
