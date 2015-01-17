Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:update, :show, :index]

  resources :apps, only: [:create, :index, :show, :update]


  get 'about' => 'welcome#about'

  root to: 'welcome#index'

 end
