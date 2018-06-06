Rails.application.routes.draw do

  get '/signin' => 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  get '/about' => 'welcome#about'
  get '/index' => 'welcome#index'
  root 'welcome#home'

  resources :windows
  resources :sites, only: [:create, :new, :show]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
