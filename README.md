# RailsInstaller Web

Web application for  http://railsinstaller.org can be found here

[ ![Codeship Status for railsinstaller/website](https://codeship.com/projects/cda693e0-f3e1-0130-c6a1-6e039e15cc73/status?branch=master)](https://www.codeship.io/projects/6492)

### Contributing


The website is written using [Middleman](http://middlemanapp.com/) so please
see the documentation if you have questions about how a Middleman site is
composed.

To contribute, fork repository, make required changes, test, open a pull request on GitHub.

If you'd like to translate the site into a different locale, add the relevant
YAML file with translated strings to `locales` and make sure everything
works properly. Check out `locales/en.yml` for strings to localize.

#### Current Translations

- English (en)
- Brazilian portuguese (pt-BR)
- Russian (ru-RU)
- French - France (fr-FR)
- Czech (cs)
- Spanish (es)

### Testing

Tests for the site are written using Capybara and in the `spec`
directory. To run them, do the following:

```
$ bundle exec rspec
```

### Updating contributor list

```bash
$ rake update:contributors
```
