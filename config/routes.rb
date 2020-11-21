Rails.application.routes.draw do
  resources :admins, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  resources :messages
  root to: "messages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
