Rails.application.routes.draw do
  devise_for :users

  #devise_scope :user do
  #get '/users/sign_out' => 'devise/sessions#destroy'
  #end

  resources :blog1s, :users
  get 'home/about'
  #root 'home#index'
  root 'blog1s#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
