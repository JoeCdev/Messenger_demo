Rails.application.routes.draw do
  root 'conversations#index'

  devise :users
  resources :conversations, only: [:index, :show, :destroy]


end
