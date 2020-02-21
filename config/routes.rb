Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show'
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'

  # get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :new_cocktail_doses
  # post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses

  resources :cocktails, only: [:new, :show, :create, :index] do
    resources :doses, only: [:new, :create]
  end
end
