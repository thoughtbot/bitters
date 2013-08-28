Bitters
===
Add a dash of predefined style to your [Bourbon](http://bourbon.io) stylesheets.

Bitters is meant to help designers get projects started faster. It adds enough predefined structure and style to get started quickly but not enough to dictate any style.

Install Instructions
===
Throw the base folder into your projects stylesheets and edit it to your sites design. Remove the parts you don't need and refactor those that don't fit your sites design.

It is recommended that you use Bitters with a reset like Normalize.

## Variables
This houses all variables that are used or will be used in more than one file. For varaible names we try to use the most semantic name possible in our Scss.

## Typography
Typography is all based on calculations of `$base-scale` and `$base-font-size`.

## Forms
Adds basic styles all form elements. The variables at the top of the file all inherit from the variables file but make it really easy to be overridden.

## Lists
All lists have stripped out styles. No bullets, no left padding. To add back the expected browser default styles add `@extend %default;` to the `<ul>` or `<ol>`.

## Flashes
Made for rails but can be used for any error, warning or success messages.

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
