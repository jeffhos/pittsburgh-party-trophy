Trophy::Application.routes.draw do
  # Let Devise manage our users and sessions
  devise_for :users, :only => :sessions
  
  # Parties are our only resource
  resources :parties

  # Old-skool routing
  get ':controller(/:action(/:id))(.:format)'

  # Default route
  root :to => 'home#index'
end
