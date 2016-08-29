Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to:'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to:'sessions#destroy'

  get '/posts/index', to: 'posts#index'
  get '/posts', to: 'posts#index'
  get '/', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
  get '/posts/:id', to: 'posts#show'

  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'

  get '/categorized_posts/:id/new', to: 'categorized_posts#new'
  post '/categorized_posts/:id', to: 'categorized_posts#create'
end
