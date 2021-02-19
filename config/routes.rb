Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :show, :create] do
    resources :doses, only: [:new, :create]
  end

  delete 'doses/:id', to: 'doses#destroy'
  # # Cocktails
  # get '/cocktails', to: 'cocktails#index'

  # get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # post '/cocktails', to: 'cocktails#create'

  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail

  # # Doses

  # get '/doses', to: 'doses#index'

  # get 'doses/new', to: 'doses#new', as: :new_dose
  # post 'doses', to: 'doses#create'

  # get '/doses/:id', to: 'doses#show', as: :dose
end
