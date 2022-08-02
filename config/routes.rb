Rails.application.routes.draw do
  resources :respuesta_pqrs
  devise_for :admins
  resources :admins
  root 'home#index'
  
  resources :pqrs
  devise_for :users
  resources :users
  resources :predios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
