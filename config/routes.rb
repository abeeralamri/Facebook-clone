Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :profiles
  devise_for :users

  resources :posts do
    resources :likes
    resources :dislikes
    resources :wows
    resources :sads
    resources :loveys
    resources :angrys
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #root to: 'posts#index'
  root to: "home#index"
end
