# Releasing

1. Update the version number in these places:

    - `lib/bitters/version.rb`
    - `core/_base.scss`
    - `package.json`

1. Update `CHANGELOG.md`. We follow the guidelines from [Keep a CHANGELOG].

1. Commit changes. Use the convention “Bitters vX.X.X” in your commit message.
   There shouldn’t be code changes, and thus CI doesn’t need to run.

1. Run `bundle exec rake release`, which tags the release, pushes the tag to
   GitHub, and pushes the gem to RubyGems.org.

1. Draft a [new GitHub release][github-release]. Upon publishing, a tweet will
   _automatically be sent_ on the [@bourbonsass] Twitter account via [Zapier].
   It will look like this:

    > We’ve released Bitters {release_title}: {release_link}

1. If needed, update the [contributing page] and [website example page].

[Keep a CHANGELOG]: http://keepachangelog.com
[github-release]: https://github.com/thoughtbot/bitters/releases/new
[@bourbonsass]: https://twitter.com/bourbonsass
[Zapier]: https://zapier.com
[contributing page]: https://github.com/thoughtbot/bitters/blob/master/contrib/index.html
[website example page]: https://github.com/thoughtbot/bitters/blob/gh-pages/example.html
