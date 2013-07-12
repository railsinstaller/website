RailsinstallerWeb::Application.routes.draw do

  #match "/auth/:provider/callback", :to => "sessions#callback"

  root :to => "welcome#index"
  
  #match "/windows", :to => "welcome#windows"
  #match "/mac", :to => "welcome#mac"
  
end
