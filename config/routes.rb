Rails.application.routes.draw do
  devise_for :users
    get '/404', to: "errors#not_found"
    get '/422', to: "errors#unacceptable"
    get '/500', to: "errors#internal_error"


  authenticated :user do
    root to: "journeys#main", as: :root
  end

  unauthenticated :user do
    root to: "pages#home", as: :unauthenticated_root
  end


  resources :settings, only: [:update] do
    collection do
      get :edit
    end
  end

  get '/journeys', to: 'journeys#index'
  resources :journeys, only: [:show, :new, :create, :destroy] do
    collection do
      get :main
      get :map
    end
    resources :items, only: [:index]
    resources :notes, :pictures, :videos, :audios, only: [:index, :new, :create]
  end

  resources :items, only: [:show, :edit, :update, :destroy, :index]
end
