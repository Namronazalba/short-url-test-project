Rails.application.routes.draw do
  devise_for :users
  # root :to => "pages#home"
  get 'about', to: 'pages#about'
  get 'post', to: 'post#post1'

end