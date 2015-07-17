# Contributing to Bitters

We love pull requests from everyone. By participating in this project, you
agree to abide by the thoughtbot [code of conduct]. Here’s a quick guide:

[code of conduct]: https://thoughtbot.com/open-source-code-of-conduct

While developing and contributing to Bitters you can use gulp to spin up an example site to help
preview your changes! Running `gulp` to pull in the stylesheets and serve a small html preview page at `http://localhost:8000`.

## Geting started started

1. Fork the repository.

2. Make your changes in a topic branch.

3. Make sure you have node & npm installed by running ↴.

    ```bash
    $ npm -v
    ```

    If you don't have it, you can download it [here](https://nodejs.org/).

4. Next up, `cd` in to bitters and run `npm install`.

    ```bash
    $ cd bitters
    $ npm install
    ```
  Then Run the gulp build command.

    ```bash
    $ gulp
    ```

  This will have gulp compile the stylesheets from `app/assets/stylesheets` and link them to a test page so
  you can preview your changes!!

5. Squash your commits into a single one (more on that [here](http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html)).

6. Rebase against `origin/master`, push to your fork and submit a pull request.

7. If you are writing a new feature please add documentation for it by making another pull request to the `gh_pages` branch.

At this point you're waiting on us. We like to at least comment on, if not
accept, pull requests within three business days (and, typically, one business
day). We may suggest some changes or improvements or alternatives.

Some things that will increase the chance that your pull request is accepted:

* Fix a bug, refactor code or expand an existing feature.
* Use the right syntax and naming conventions.
* Update parts of the documentation that are affected by your contribution.

## Git Commit Messages

* Capitalize your commit messages.
* Start your message with a verb.
* Use present tense.
* Refer to the issue/PR number in your squashed commit message.

## SCSS Style Guide

* Two spaces, no tabs.
* Dashes instead of underscores or camel case: `section-header` **not** `section_header` or `sectionHeader`
* Names should be descriptive and written in full-words: `$base-font-color` **not** `$color` or `$txtCLR`
* Space between property and value: `width: 20px` **not** `width:20px`
* Declarations within a block should be ordered alphabetically.
* Blank lines between rules.
* No trailing whitespace. Blank lines should not have any space.

For more on how [thoughtbot](http://thoughtbot.com) writes Sass, check out our
[guides](https://github.com/thoughtbot/guides/tree/master/style/sass).
