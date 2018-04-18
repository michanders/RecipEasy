Rails.application.routes.draw do
  resources :users, :recipes
  root "users#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/favorites' => 'users#show'

  get '/search' => 'recipes#index'
  post '/search' => 'recipes#index'

  get '/details' => 'recipes#show'

end
