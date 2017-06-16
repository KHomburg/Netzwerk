Rails.application.routes.draw do

  devise_for :users
  root 'staticpages#home'
  get '/ueber', to: 'staticpages#ueber'
  get '/kontakt', to: 'staticpages#kontakt'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
