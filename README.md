# Bitters

**Scaffold styles, variables and structure for [Bourbon](http://bourbon.io) projects.**

Bitters helps designers start projects faster by defining a basic set of Sass variables, default element style and project structure. It’s been specifically designed for use within web applications. Bitters should live in your project’s root Sass directory and we *encourage* you to modify and extend it to meet your design and brand requirements.

Bitters is made to work alongside a CSS reset and not replace it. Our suggested reset is [Normalize](http://necolas.github.io/normalize.css).

## Requirements

- Sass 3.0+
- Bourbon 2.0+
- Ruby 1.9.3+

## Installation

:warning: **Ruby 1.9.3 or higher** is required to install Bitters from the command line.

1. Install Bitters:

  ```bash
  gem install bitters
  ```

  *If you use [rbenv](https://github.com/sstephenson/rbenv), be sure to run `rbenv rehash` without any errors.*

2. Install [Bourbon](https://github.com/thoughtbot/bourbon#installation-for-rails-31) (required) and [Neat](https://github.com/thoughtbot/neat#install-instructions) (optional).

3. `cd` to your Sass directory and run:

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

  And import Neat after Bitters:

  ```scss
  @import "bourbon";
  @import "base/base";
  @import "neat";

  // All other imports
  ```

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
All type is based on `$base-font-size` which is set to 1em (16px) by default. The spacing around type is based on `$base-line-height` so as to keep a semi-baseline grid. All sizes are scaled up or down by a factor of `.25`.

### Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default-ul;` or `@extend %default-ol;` to the `<ul>` or `<ol>` respectively.

### Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

### Buttons
Basic style for `button` and `input[type="submit"]`. Button style can be changed by setting the `$button-style` variable to one of the [Bourbon](http://bourbon.io) button style [options](http://bourbon.io/docs/#buttons).

### Flashes
Used for any error, warning or success messages in applications or forms. Specifically made for [Rails](http://rubyonrails.org) application notices.

## The Bourbon family

- [Bourbon](http://bourbon.io): A simple and lightweight mixin library for Sass
- [Neat](http://neat.bourbon.io): A lightweight semantic grid framework for Sass and Bourbon
- [Bitters](http://bitters.bourbon.io): Scaffold styles, variables and structure for Bourbon projects
- [Refills](http://refills.bourbon.io): Prepackaged patterns and components, built on top of Bourbon, Bitters & Neat

## Credits

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bitters is maintained and funded by [thoughtbot, inc](http://thoughtbot.com).
Tweet your questions or suggestions to [@bourbonsass](https://twitter.com/bourbonsass) and while you’re at it follow us too.

## License

Bitters is Copyright © 2014 thoughtbot. It is free software, and may be redistributed under the terms specified in the [LICENSE](LICENSE.md) file.
