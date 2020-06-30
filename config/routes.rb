Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :settings, only: [:update] do
    collection do
      get :edit
    end
  end
   resources :journeys, only: [:index, :show, :new, :create, :destroy] do
  end
end
