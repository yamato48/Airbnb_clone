Rails.application.routes.draw do
  resources :users, only:[:edit, :show]
end
