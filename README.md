# RailsInstaller Web

Web application for http://railsinstaller.org

### Contributing

Fork repository, make required changes, test, open a pull request on GH.

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
