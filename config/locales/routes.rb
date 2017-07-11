Rails.application.routes.draw do

  devise :users

  resources :conversations, only: [:index, :show, :destroy]

  resources :messages, only: [:new, :create]

  resources :users, only: [:index]

  root to: 'conversations#index'


end
