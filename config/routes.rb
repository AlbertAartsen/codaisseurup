Rails.application.routes.draw do
  resources :themes
  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show]

  resources :events do
    resources :registrations, only: [:create]
  end

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos

  namespace :api do
    resources :events do
      resources :registrations, only: [:create, :update, :destroy]
    end
  end

  namespace :api do
    resources :themes
  end    


  get "about" => "pages#about"
end
