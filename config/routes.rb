Rails.application.routes.draw do
  get "login" => "sessions#new"

    get "logout" => "sessions#destroy"

  get "dashboard" => "dashboard#static"

  get "about_us" => "welcome#about"

  resources :sessions, only: [:create]

resources :users, only: [:new, :create]
  root 'welcome#index'

  get "home" => "welcome/index"

  get "Contact" => "welcome#contact"

  get 'users/new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
