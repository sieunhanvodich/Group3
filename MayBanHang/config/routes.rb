Rails.application.routes.draw do
  resources :categories do
    resources :items
  end
  get 'signup'  => 'users#new' 
  resources :users
  root 'users#index'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/main' => 'categories#index'
end
