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



  get "about" => "pages#about"
end
