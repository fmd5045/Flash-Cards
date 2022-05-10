Rails.application.routes.draw do
  resources :card_collections
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "card_collections#index"
  resources :cards 
end
