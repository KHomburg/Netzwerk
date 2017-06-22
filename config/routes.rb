Rails.application.routes.draw do

  devise_for :users
  root 'staticpages#home'
  get '/ueber', to: 'staticpages#ueber'
  get '/kontakt', to: 'staticpages#kontakt'
  get '/users/index', to: 'users#index'
  resources :posts, only: [:new, :create, :index]
  #get '/posts/new', to: 'posts#new'
  #get '/posts/index', to: 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
