Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'conferences#index'

  get '/signup', to: 'users#new'

  post '/users', to: 'users#create'

  get '/users/:id/user_interests/new', to: 'user_interests#new'

  get '/users/:id', to: 'users#show'

  get '/conferences/:id', to: 'conferences#show'

  post '/donations', to: 'donations#create'
#  match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post] 



  post '/user_interests', to: 'user_interests#create'

  get '/users/:id/user_interests/edit', to: 'user_interests#edit'

  patch '/user_interests', to: 'user_interests#update'

  #after new user submits user_interest form, the header nav bar will show up that gives them options

  get '/login', to: 'sessions#new', as: 'login'

  post '/sessions', to: 'sessions#create', as: 'session'

  get '/logout', to: 'sessions#destroy'

  post '/donations', to: 'donations#create'

  #only admin can do these.. Admin must enter a specific password 
  #admin can edit conferences, user can only select and register (only if logged in)
  scope '/admin', module: 'admin' do
    resources :users, only: [:index]
    resources :conferences, only: [:new, :create, :admin_index]
    get '/conferences/:id/workshops/new', to: 'workshops#new'
    post '/workshops', to: 'workshops#create'
  end


  #add interest route that comes from user id
  #get '/add_interest', to:

#  resources :users do
#    resources :user_interests
#  end

#  resources :conferences do
#    resources :workshops
#  end

 

end
