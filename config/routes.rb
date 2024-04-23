Rails.application.routes.draw do
  get "home/index"
  devise_for :users
  root to: 'home#index'
  
  devise_scope :user do 
    get "user/sign_out" => "devise/sessions#destroy"
  end
  #get 'home/index'
  #head '/', to: 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
