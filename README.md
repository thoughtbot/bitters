Bitters
===
Add a dash of predefined style to get your [Bourbon](http://bourbon.io) stylesheets started off in the right direction.

Bitters is meant to help designers get projects started on new projects faster. It adds enough predefined structure and style to get started quickly but bland enough so that it doesn't dictate any style moving forward.

Install Instructions
===
Copy the Bitters base folder into your projects stylesheets and edit, delete or and refactor styles that don't fit your sites design. To include Bitters add `@include "base/base";` after a reset, we suggest [Normalize](http://necolas.github.io/normalize.css/), Bourbon and [Neat](http://neat.bourbon.io).

```scss
@import "normalize";
@import "bourbon";
@import "neat";
@import "base/base";

// All other imports
```

If you are using Neat overrides, `_grid-settings.scss` `@import "base/grid-settings"` between Bourbon and Neat as directed by [Neats Documentation](https://github.com/thoughtbot/neat#getting-started).

```scss
@import "normalize";
@import "bourbon";
@import "base/grid-settings";
@import "neat";
@import "base/base";

// All other imports
```

Getting Started
===

### Sass structure & default style
The base folder should contain styles for all the basic elements used throughout the sites style. Feel free to add any code that might be reused throughout the entire site. For example add an `_extends.scss` file or extends directory to contain your site wide extends.

The default style is meant to get out of the way and give you a good starting place for new projects. It shouldn't dictate any design decisions, only make the styles not look terrible from the start.

### Variables
This houses all variables that are used or will be used in more than one file. For variable names we try to use the most semantic name possible in our Scss. If using Neat overrides `@import` this file before Neat.

### Typography
All type is based on `$base-font-size` which is set to 1em (16px) by default. The spacing around type is based on `$base-line-height` so as to keep a semi-baseline grid. All sizes are scaled up or down by a factor of `.25`.

### Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default;` to the `<ul>` or `<ol>`.

### Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

### Flashes
Made for rails notices but can be used for any error, warning or success messages in applications or forms.

Requirements
===
- Sass 3.0+
- Bourbon 2.0+

Credits
===

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community). Tweet your questions or suggestions at [@kylefiedler](https://twitter.com/kylefiedler).

License
===

Bitters is Copyright © 2013 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
