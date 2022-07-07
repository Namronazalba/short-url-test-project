Rails.application.routes.draw do


  # resources :shortenurls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'pages#home'
  # get 'about', to:'about#aboutus'

  root 'pages#home'
  devise_for :users

end
