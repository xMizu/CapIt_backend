Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/user' , to: 'users#show'
  resources :expenses
  resources :categories
  resources :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
