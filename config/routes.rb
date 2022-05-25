Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :restaurants

  resources :restaurants, only: [:index, :create, :show, :new] do
    resources :reviews, only: [:show, :new, :create]
  end
end
