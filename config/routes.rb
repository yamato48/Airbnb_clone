Rails.application.routes.draw do
  devise_for :users
  root 'hosts#index'
  resources :users, only: [:show, :edit, :update] do
    member do
      post :edit_varification
    end
  end
  resources :hosts do
    collection do
      get 'search'
      post 'bedrooms'
      post 'bathrooms'
      post 'location'
      post 'amenities'
    end
  end
  resources :categories, only: [] do
    resources :house_types, only: [:index, :show] do
    end
  end
end
