Rails.application.routes.draw do
  resources :incomes
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  post '/savings', to: 'expenses#savings'
  patch '/savings', to: 'expenses#savings_update'
  get '/user' , to: 'users#show'
  resources :expenses
  resources :categories
  resources :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
