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
      get 'rooms'
      post 'bedrooms'
      post 'bathrooms'
      post 'location'
      post 'amenities'
    end
    member do
    # ステップ１
      get 'rooms'
      post 'bedrooms'
      post 'bathrooms'
      post 'location'
      post 'amenities'
    # ステップ２
      get 'photos'
      patch 'description'
      patch 'title'
    # ステップ３
      get 'guest-requirements'
      patch 'house-rules'
      patch 'review-guest-requirements'
      get 'review-how-guests-book'
      get 'keep-calendar-up-to-date'
      patch 'availability-questions'
      patch 'calendar'
      patch 'price'
      patch 'additional-pricing'
      get 'local-law'
    end
  end
  resources :categories, only: [] do
    resources :house_types, only: [:index, :show] do
    end
  end
end
