RailsinstallerWeb::Application.routes.draw do

  match "/auth/:provider/callback", :to => "sessions#callback"

  root :to => "welcome#index"

end
