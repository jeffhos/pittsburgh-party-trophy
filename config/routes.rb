Trophy::Application.routes.draw do

  # Parties are our only resource
  resources :parties

  # Old-skool routing
  get ':controller(/:action(/:id))(.:format)'

  # Default route
  root :to => 'home#index'
end
