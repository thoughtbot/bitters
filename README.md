[<img src="https://images.thoughtbot.com/bourbon/bitters-logo.svg" width="200" alt="Bitters">](http://bitters.bourbon.io)

## Scaffold styles, variables and structure for Bourbon projects.

Bitters helps designers start projects faster by defining a basic set of Sass
variables, default element style and project structure. It’s been specifically
designed for use within web applications. Bitters should live in your project’s
root Sass directory and we *encourage* you to modify and extend it to meet your
design and brand requirements.

Bitters is made to work alongside a CSS reset or style-normalizer; not replace
one. We like to use [Normalize].

[Normalize]: https://github.com/necolas/normalize.css/

### Helpful Links

- [Demo](http://bitters.bourbon.io)
- [Change log](CHANGELOG.md)
- [Twitter](https://twitter.com/bourbonsass)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/bitters)

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Using Bitters](#using-bitters)
- [Command Line Interface](#command-line-interface)
- [The Bourbon Family](#the-bourbon-family)
- [Contributing](#contributing)
- [License](#license)
- [About](#about)

## Requirements

- [Sass] 3.4+ or [LibSass] 3.3+
- [Bourbon] 5.0+
- Ruby 1.9.3+ (required to install Bitters from the command line)

[Sass]: https://github.com/sass/sass
[LibSass]: https://github.com/sass/libsass
[Bourbon]: https://github.com/thoughtbot/bourbon

## Installation

1. Install the Bitters gem using the [RubyGems] package manager:

  ```bash
  gem install bitters
  ```

1. Install [Bourbon][bourbon-install].

1. Install the Bitters library into the current directory by running the
   following command at the command-line. If you’re using Ruby on Rails, run the
   command in `app/assets/stylesheets`:

  ```bash
  bitters install
  ```

  A `base` directory will be generated which contains all of the Bitters files.

1. Import Bitters after Bourbon in your `application.css.scss` or main manifest
   file. All additional stylesheets should be imported below Bitters.

  ```scss
  @import "bourbon";
  @import "base/base";
  ```

1. Once Bourbon and Bitters are set up, you can begin to import your styles
   below them.

  ```scss
  @import "bourbon";
  @import "base/base";
  @import "my-project-styles";
  …
  ```

[RubyGems]: https://rubygems.org
[bourbon-install]: https://github.com/thoughtbot/bourbon#installation

## Using Bitters

### Sass structure & default style

The Bitters directory (`base/`) should contain styles for all the basic elements
used throughout the project. It also contains directories for custom mixins and
extends for your site. Add code to the existing files or add new files to the
directories. Customize Bitters for your site as you see fit.

### Variables

This houses all variables that are used, or will be used, in more than one file
in your site. Variable names in Bitters that are used outside of the variables
file start with `$base` to indicate that they are the most basic variables.

### Typography

All type is based on `$base-font-size` which is set to 1em (16px) by default.
The spacing around type is based on `$base-line-height` so as to keep a
semi-baseline grid. All sizes are scaled up or down by a factor of `0.25`.

### Lists

All lists have stripped out styles. No bullets, no left padding.

### Forms

Adds basic styles all form elements. The variables at the top of the file all
inherit from the variables file but make it really easy to be overridden.

### Buttons

Basic style for `button` and `input[type="submit"]`. Base button styles can be
changed by modifying the styles applied to `button` and `#{$all-button-inputs}`
in `base/_button.scss`.

## Command Line Interface

```bash
bitters [options]
```

### Options

| Option            | Description               |
| :---------------- | :------------------------ |
| `-h`, `--help`    | Show help                 |
| `-v`, `--version` | Show the version number   |
| `--path`          | Specify a custom path     |
| `--force`         | Force install (overwrite) |

### Commands

| Command           | Description                                           |
| :---------------- | :---------------------------------------------------- |
| `bitters install` | Install Bitters into the current directory            |
| `bitters reset`   | Reset Bitters                                         |
| `bitters remove`  | Removes Bitters from the current directory            |
| `bitters help`    | Show help                                             |
| `bitters version` | Show the version number                               |

## The Bourbon Family

- [Bourbon]: A Lightweight Sass Tool Set
- [Neat]: A lightweight and flexible Sass grid
- [Refills]: Components and patterns built with Bourbon and Neat

[Bourbon]: https://github.com/thoughtbot/bourbon
[Neat]: https://github.com/thoughtbot/neat
[Refills]: https://github.com/thoughtbot/refills

## Contributing

See the [contributing] document. Thank you, [contributors]!

[contributing]: CONTRIBUTING.md
[contributors]: https://github.com/thoughtbot/bitters/graphs/contributors

## License

Bitters is copyright © 2013-2017 [thoughtbot, inc.] It is free software, and may
be redistributed under the terms specified in the [license].

[thoughtbot, inc]: http://thoughtbot.com
[license]: LICENSE.md

## About

Bitters is maintained by the thoughtbot design team. It is funded by
[thoughtbot, inc.][thoughtbot] and the names and logos for thoughtbot are
trademarks of thoughtbot, inc.

[<img src="http://presskit.thoughtbot.com/images/signature.svg" width="250" alt="thoughtbot logo">][thoughtbot]

We love open-source software! See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[thoughtbot]: https://thoughtbot.com?utm_source=github
[community]: https://thoughtbot.com/community?utm_source=github
[hire]: https://thoughtbot.com/hire-us?utm_source=github
