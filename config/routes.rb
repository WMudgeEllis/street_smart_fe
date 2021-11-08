Rails.application.routes.draw do
  resources :places
  root "welcome#index"
  get '/dashboard', to: 'hazards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hazards, only: [:show, :new, :create, :destroy]
  resources :votes, only: :update
  # post '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
