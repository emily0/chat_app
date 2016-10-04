Rails.application.routes.draw do

  devise_for :users
  resources :chat_rooms, only: [:new, :create, :show, :index]

  get 'programming', to: 'pages#programming'
  get 'marketing', to: 'pages#marketing'

  root 'welcome#index'
  mount ActionCable.server => '/cable'
end
