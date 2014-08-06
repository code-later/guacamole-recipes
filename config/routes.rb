Rails.application.routes.draw do
  root 'home#index'

  resources :recipes do
    resources :comments
  end

  resources :users do
    resources :recipes
  end

  resource :session, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
end
