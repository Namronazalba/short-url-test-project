Rails.application.routes.draw do
  devise_for :users

  #   root  'pages#home'

  root :to => "pages#home"
  get 'about', to: 'pages#about'
  get 'post', to: 'post#post1'
  resources :articles
end