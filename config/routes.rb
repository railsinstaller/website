RailsinstallerWeb::Application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'welcome#index'
  end
end
