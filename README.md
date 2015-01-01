[![Bitters](http://images.thoughtbot.com/bourbon/bitters-logo.svg)](http://bitters.bourbon.io)

[![Gem Version](http://img.shields.io/gem/v/bitters.svg?style=flat)](https://rubygems.org/gems/bitters)

## Scaffold styles, variables and structure for Bourbon projects.

Bitters helps designers start projects faster by defining a basic set of Sass variables, default element style and project structure. It’s been specifically designed for use within web applications. Bitters should live in your project’s root Sass directory and we *encourage* you to modify and extend it to meet your design and brand requirements.

Bitters is made to work alongside a CSS reset; not replace one. Our suggested reset is [Normalize](http://necolas.github.io/normalize.css).

- **[Demo](http://bitters.bourbon.io)**
- **[Changelog](https://github.com/thoughtbot/bitters/releases)**
- **[Issues & Bugs](https://github.com/thoughtbot/bitters/issues)**

## Requirements

- [Sass](https://github.com/sass/sass) 3.0+
- [Bourbon](https://github.com/thoughtbot/bourbon) 2.0+
- Ruby 1.9.3+ (required to install Bitters from the command line)

## Installation

For command line help, visit our wiki page on Bitters’ [command line interface](https://github.com/thoughtbot/bitters/wiki/Command-Line-Interface).

1. Install the Bitters gem using the [RubyGems](https://rubygems.org) package manager:

  ```bash
  gem install bitters
  ```

  *If you use [rbenv](https://github.com/sstephenson/rbenv), be sure to run `rbenv rehash` without any errors.*

2. Install [Bourbon](https://github.com/thoughtbot/bourbon#installation) (required) and [Neat](https://github.com/thoughtbot/neat#installation) (optional).

3. Install the Bitters library into the current directory by running the following command at the command-line. If you’re using Ruby on Rails, run the command in `app/assets/stylesheets`:

  ```bash
  bitters install
  ```

  A `base` directory will be generated which contains all of the Bitters files.

4. Import Bitters after Bourbon in your `application.css.scss` or main manifest file. All additional stylesheets should be imported below Bitters.

  ```bash
  @import "bourbon";
  @import "base/base";
  ```

5. When using Neat, uncomment the following line in `_base.scss`:

  ```scss
  @import "grid-settings";
  ```

  And import Neat after Bitters in your `application.css.scss` or main manifest file:

  ```scss
  @import "bourbon";
  @import "base/base";
  @import "neat";

  // All other imports
  ```

  **Note:** If you are using Bitters and Neat without Ruby on Rails, you need to change the import for `neat-helpers` inside `_grid-settings.scss` to `"../neat/neat-helpers"`.

  If you want to use Neat functions in Bitters, you can `@import "grid-settings";` before Neat, remove `@import "grid-settings";` from `_base.scss` and import the rest of bitters after. For example:

  ```scss
  @import "bourbon";
  @import "base/grid-settings";
  @import "neat";
  @import "base/base";

  // All other imports
  ```

## Using Bitters

### Sass structure & default style
The Bitters directory should contain styles for all the basic elements used throughout the project. It also contains directories for custom mixins and extends for your site as well. Add code to the existing files or add new files to the directories. Customize Bitters for your site as you see fit.

### Variables
This houses all variables that are used, or will be used, in more than one file in your site. Variable names in Bitters that are used outside of the variables file start with `$base` to indicate that they are the most basic variables.

### Grid settings
Variables specifically created for [Neat](http://neat.bourbon.io) resets and breakpoints. To be used, these need to be imported separately from the rest of your base file above Neat in your main stylesheet. Otherwise just remove the file.

### Typography
All type is based on `$base-font-size` which is set to 1em (16px) by default. The spacing around type is based on `$base-line-height` so as to keep a semi-baseline grid. All sizes are scaled up or down by a factor of `0.25`.

### Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default-ul;` or `@extend %default-ol;` to the `<ul>` or `<ol>` respectively.

### Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

### Buttons
Basic style for `button` and `input[type="submit"]`. Base button styles can be changed by modifying the `%button` extend in `base/extends/_button.scss`.

## The Bourbon family

- [Bourbon](https://github.com/thoughtbot/bourbon): A simple and lightweight mixin library for Sass
- [Neat](https://github.com/thoughtbot/neat): A lightweight semantic grid framework for Sass and Bourbon
- [Bitters](https://github.com/thoughtbot/bitters): Scaffold styles, variables and structure for Bourbon projects
- [Refills](https://github.com/thoughtbot/refills): Prepackaged patterns and components built with Bourbon, Neat and Bitters

## Credits

[![thoughtbot](http://images.thoughtbot.com/bourbon/thoughtbot-logo.svg)](http://thoughtbot.com)

Bitters is maintained and funded by [thoughtbot, inc](http://thoughtbot.com). Tweet your questions or suggestions to [@bourbonsass](https://twitter.com/bourbonsass) and while you’re at it follow us too.

## License

Copyright © 2013–2015 [thoughtbot, inc](http://thoughtbot.com). Bitters is free software, and may be redistributed under the terms specified in the [license](LICENSE.md).
