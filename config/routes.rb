Rails.application.routes.draw do
  devise_for :users
  root 'hosts#index'
  resources :users, only: [:show, :edit, :update]
  resources :hosts do
    collection do
      get 'search'
    end
  end
end
