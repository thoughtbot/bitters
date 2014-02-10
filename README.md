Bitters
===
Add a dash of predefined style to get your [Bourbon](http://bourbon.io) stylesheets started off in the right direction.

Bitters is meant to help designers get projects started on new projects faster. It adds enough predefined structure and style to get started quickly but bland enough so that it doesn't dictate any style moving forward. Bitters should live in your projects sass root folder and be **modified** and extended while you design your project.

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

The generated folder will contain all Bitters files.

Import Bitters after Bourbon in your `application.css.scss`. If you are using the Neat overrides found in `_grid-settings.scss`, be sure to `@import "bitters/bitters"` between Bourbon and Neat. Be sure to not include any of Neat's mixins or functions in the Bitters files when modifying Bitters. All additional stylesheets should be imported below Bitters:

```scss
@import "bourbon";
@import "bitters/bitters";
@import "neat";

// All other imports
```


We suggest using [Normalize](http://necolas.github.io/normalize.css/) for a CSS reset with Bitters.


Getting Started
===

### Sass structure & default style
The base folder should contain styles for all the basic elements used throughout the sites style. Feel free to add code to the existing files or add new files to customize Bitters for your site.

The default style is meant to get out of the way and give you a good starting place for new projects. It shouldn't dictate any design decisions, only make the styles not look terrible from the start.

### Variables
This houses all variables that are used, or will be used, in more than one file in your site. For variable names we try to use the most semantic name possible in our Scss.

### Grid settings
Variables specifically created for Neat resets and breakpoints. To be used, these need to be imported separately from the rest of your base file above Neat in your main stylesheet. Otherwise just remove the file.

### Typography
All type is based on `$base-font-size` which is set to 1em (16px) by default. The spacing around type is based on `$base-line-height` so as to keep a semi-baseline grid. All sizes are scaled up or down by a factor of `.25`.

### Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default-ul;` or `@extend %default-ol;` to the `<ul>` or `<ol>` respectively..

### Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

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
