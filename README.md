# RailsInstaller Web

Web application for http://railsinstaller.org

### Contributing

Fork repository, make required changes, test, open a pull request on GH.

If you'd like to translate the site into a different locale, add the relevant
YAML file with translated strings to `config/locales` and make sure everything
works properly. Check out `config/locales/en.yml` for strings to localize.

#### Current Translations

- English (en)
- Portuegese - Brazil (pt-BR)
- Russian (ru)

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
