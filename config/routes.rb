Rails.application.routes.draw do
  resources :places
  get '/dashboard', to: 'hazards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hazards, only: [:show, :new, :create, :delete]
end
