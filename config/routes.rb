Rails.application.routes.draw do
  resources :windows
  resources :sites
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end