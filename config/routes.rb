Rails.application.routes.draw do
  resource :blogs
  resources :users, only: [:new, :create, :edit, :show, :update]
  resources :sessions, only: [:new, :create, :destroy]
end
