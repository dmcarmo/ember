Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get '/items', to: 'items#search'

  resources :settings, only: [:update] do
    collection do
      get :edit
    end
  end

  resources :journeys, only: [:index, :show, :new, :create, :destroy] do
    collection do
      get :main
    end
    resources :items, :notes, only: [:index, :new, :create]
  end

  resources :items, only: [:show, :edit, :update, :destroy]
end
