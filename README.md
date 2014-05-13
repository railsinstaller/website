# RailsInstaller Web

Web application for http://railsinstaller.org

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

### Testing

```bash
cp config/database.yml.template config/database.yml
bundle install --without="production test"
rails s
```

And visit http://localhost:3000

### Updating contributor list

```bash
rake update:contributors
```
