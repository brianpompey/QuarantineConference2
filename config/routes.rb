Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'conferences#index'

  get '/signup', to: 'users#new'

  post '/users', to: 'users#create'

  get '/users/:id/user_interests/new', to: 'user_interests#new'

  get '/users/:id', to: 'users#show'

  

  post '/user_interests', to: 'user_interests#create'
  #after new user submits user_interest form, the header nav bar will show up that gives them options

  get '/login', to: 'sessions#new', as: 'login'

  post '/session', to: 'sessions#create', as: 'session'

  delete '/session/', to: 'sessionscur#destroy'

  post '/donations', to: 'donations#create'

  #only admin can do these.. Admin must enter a specific password 
  #admin can edit conferences, user can only select and register (only if logged in)
  get '/users', to: 'users#index'

  get '/conferences/new', to: 'conferences#new'

  post '/conferences', to: 'conferences#create'

  get '/conferences/:id/workshops/new', to: 'workshops#new'

  post '/workshops', to: 'workshops#create'

  #add interest route that comes from user id
  #get '/add_interest', to:

#  resources :users do
#    resources :user_interests
#  end

#  resources :conferences do
#    resources :workshops
#  end

 

end
