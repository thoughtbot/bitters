# Change Log

All notable changes to this project will be documented in this file. This
project adheres to [Semantic Versioning](http://semver.org).

## [Unreleased]

[Unreleased]: https://github.com/thoughtbot/bitters/compare/v1.4.0...HEAD

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
