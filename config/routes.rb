Rails.application.routes.draw do
  devise_for :users
  root 'host#index'
  resources :users, only: [:show, :edit]
  resources :host do
    collection do
      get 'search'
    end
  end

end
