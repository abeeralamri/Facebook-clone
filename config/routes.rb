Rails.application.routes.draw do
  resources :events
  resources :group_comments
  resources :group_posts
  resources :groups
  resources :comments
  resources :posts
  resources :profiles
  devise_for :users
  resources :friends
  resources :groups
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
  get "friend_list", to: "friends#index"

  post '/friendship/create/:id', to: 'friends#create'
  delete '/friend_list/:id', to: 'friendships#destroy'

  post '/group_post/create', to: 'group_posts#create'
  
 end
