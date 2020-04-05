Rails.application.routes.draw do
  resources :users
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  
  resources :sessions, only: [:new, :create, :destroy ]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  #root 'articles#new'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
