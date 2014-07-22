Rails.application.routes.draw do
  root 'recipes#index'

  resources :recipes
  resources :users do
    resources :recipes
  end

  resource :session, only: [:new, :create]

  get 'login', to: 'session#new'
end
