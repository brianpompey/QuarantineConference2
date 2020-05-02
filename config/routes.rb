Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'conferences#index'

  get '/signup', to: 'users#new'

  post '/users', to: 'users#create'


  get '/users/:id', to: 'users#show'

  get '/conferences/:id', to: 'conferences#show'

  resources :conferences do
    resources :donations, only: [:new]
  end
#  post '/donations', to: 'donations#create'


  resources :users do
    resources :user_interests, only: [:new, :edit]
  end

  resources :user_interests



  get '/users/:user_id/user_interests/:id/edit', to: 'user_interests#edit'


  #after new user submits user_interest form, the header nav bar will show up that gives them options

  get '/login', to: 'sessions#new', as: 'login'

  post '/sessions', to: 'sessions#create', as: 'session'

  get '/logout', to: 'sessions#destroy'

  post '/donations', to: 'donations#create'

  #only admin can do these.. Admin must enter a specific password 
  #admin can edit conferences, user can only select and register (only if logged in)
  scope '/admin', module: 'admin' do
    resources :users, only: [:index]
    resources :conferences, only: [:new, :create]
    get '/conferences/admin_index.html.erb', to: 'conferences#admin_index', as: 'super_index'
    get '/conferences/:id/workshops/new', to: 'workshops#new'
    post '/workshops', to: 'workshops#create'
  end
 

end
