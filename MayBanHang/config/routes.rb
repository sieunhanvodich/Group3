Rails.application.routes.draw do
  resources :categories do
    resources :items
  end
  resources :tables do
    resources :orders do
      member do 
        patch :complete
      end
    end    
  end
  

  get 'signup'  => 'users#new' 
  resources :users
  root 'users#index'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/main' => 'categories#index'
end
