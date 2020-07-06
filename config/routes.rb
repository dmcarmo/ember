Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "journeys#main", as: :root
  end

  unauthenticated :user do
    root to: "pages#home", as: :unauthenticated_root
  end

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
    resources :items, only: [:index]
    resources :notes, :pictures, :videos, :audios, only: [:index, :new, :create]
  end

  resources :items, only: [:show, :edit, :update, :destroy]
end
