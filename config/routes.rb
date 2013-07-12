RailsinstallerWeb::Application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'welcome#index'
  end

  match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  match '', to: redirect("/#{I18n.default_locale}")
end
