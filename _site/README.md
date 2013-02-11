#Bourbon UI-Smash

A Sass UI Library

#[Documentation & Demo](http://thoughtbot.github.com/bourbon_ui_smash)

##Requirements

* [Bourbon](http://thoughtbot.com/bourbon)
* [Normalize](http://necolas.github.com/normalize.css/2.0.1/normalize.css) (suggested)

Alpha v0.0.2

## UI Base
This folder is meant to be a set of base-styles which you can customize specifically for your project. It is a starting point for new projects.

To use the **UI Base** folder, drop the folder into your Sass directory and `@import 'ui-base/base';` after your Bourbon import.

It is suggested that you use **ui-base** with [Normalize](http://necolas.github.com/normalize.css/2.0.1/normalize.css).  
Note: `@import "normalize";` before **ui-base**.

## UI Components
These components are a set of reusable UI elements which can be `@extended` or `@included` in your sass files. They are meant to be pulled into your project and customized to your needs.

To use the **UI Components** folder, drop the folder into your Sass directory and `@import 'ui-components/base';` after your Bourbon import.

## GH-Pages Branch

**Do not force push unless necessary. Do the following if your push is rejected:**

To pull in the latest changes on from origin/gh-pages branch:

    git pull --rebase origin gh-pages

To merge in the latest changes from master, you must fetch and merge master into gh-pages:

    git fetch origin master && git merge master

