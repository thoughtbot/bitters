Bitters
===
Scaffold styles, variables and structure for [Bourbon](http://bourbon.io) projects.

Bitters is meant to help designers start projects faster by defining a basic set of variables and project structure. After you have Bitters installed, jump in and start customizing the styles and variables to your design and brand requirements.

Bitters should live in your project's sass root folder and be **modified** and extended while you design your project.

Install Instructions
===
Install Bitters:

```bash
gem install bitters
```

Install [Bourbon](https://github.com/thoughtbot/bourbon#install-for-rails-31) (required) and [Neat](https://github.com/thoughtbot/neat#install-instructions) (optional).

Then `cd` to your Sass directory and run:

```bash
bitters install
```

A `base` directory will be generated which contains all of the Bitters files.

Import Bitters after Bourbon in your `application.css.scss` or main manifest file. All additional stylesheets should be imported below Bitters.

When using Neat, have the following line in `_base.scss` uncommented:

```scss
@import 'grid-settings';
```

If you are using Neat, import it after Bitters.

```scss
@import 'bourbon';
@import 'base/base';
@import 'neat';

// All other imports
```

If you want to use Neat functions in Bitters files you can `@import 'grid-settings';` before Neat, remove `@import 'grid-settings';` from `_base.scss` and import the rest of bitters after. eg:

```scss
@import 'bourbon';
@import 'base/grid-settings';
@import 'neat';
@import 'base/base';

// All other imports
```
We suggest using [Normalize](http://necolas.github.io/normalize.css/) for a CSS reset with Bitters.

Getting Started
===

### Sass structure & default style
The Bitters folder should contain styles for all the basic elements used throughout the project. It also contains folders for custom mixins and extends for your site as well. Add code to the existing files or add new files to the folders. Customize Bitters for your site as you see fit.

### Variables
This houses all variables that are used, or will be used, in more than one file in your site. Variable names in Bitters that are used outside of the variables file start with $base to indicate that they are the most basic variables.

### Grid settings
Variables specifically created for Neat resets and breakpoints. To be used, these need to be imported separately from the rest of your base file above Neat in your main stylesheet. Otherwise just remove the file.

### Typography
All type is based on `$base-font-size` which is set to 1em (16px) by default. The spacing around type is based on `$base-line-height` so as to keep a semi-baseline grid. All sizes are scaled up or down by a factor of `.25`.

### Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default-ul;` or `@extend %default-ol;` to the `<ul>` or `<ol>` respectively..

### Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

### Buttons
Basic style for `button` and `input[type="submit"]`. Button style can be changed by setting the `$button-style` variable to one of the [Bourbon](http://bourbon.io) button style [options](http://bourbon.io/docs/#buttons).

### Flashes
Used for any error, warning or success messages in applications or forms. Specifically made for rails application notices.

Requirements
===
- Sass 3.0+
- Bourbon 2.0+

Credits
===

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bitters is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community). Tweet your questions or suggestions at [@kylefiedler](https://twitter.com/kylefiedler).

License
===

Bitters is Copyright © 2014 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
