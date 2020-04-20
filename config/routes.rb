Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'conferences#index'

  get '/signup', to: 'users#new'

  #add interest route that comes from user id
  #get '/add_interest', to:
  
  resources :users do
    resources :user_interests
  end

  resources :conferences do
    resources :workshops
  end

  get '/signin', to: 'session#new', as: 'signin'

  post '/session', to: 'session#create', as: 'session'

  delete '/session/', to: 'session#destroy'

end
