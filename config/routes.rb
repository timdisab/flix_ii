Rails.application.routes.draw do
  root "movies#index"
  resources :users
  get "signup" => "users#new"

  resources :movies do
    resources :reviews
    resources :favorites
  end

  resource :session
end
