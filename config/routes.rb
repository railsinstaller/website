RailsinstallerWeb::Application.routes.draw do

  root to: 'welcome#index'

  match '/:locale' => 'welcome#index'

  #scope '(:locale)', locale: 'en' do
  #  match "/auth/:provider/callback", :to => "sessions#callback"
  #  match '/windows', :to => 'welcome#windows'
  #  match '/mac', :to => 'welcome#mac'
  #end

end
