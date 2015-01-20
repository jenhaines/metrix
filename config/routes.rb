Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:update, :show, :index]

  resources :apps, only: [:new, :create, :index, :show, :update]

  namespace :api do
    resources :events, only: [:create, :index, :show]
  end


  get 'about' => 'welcome#about'

  root to: 'welcome#index'

 end
