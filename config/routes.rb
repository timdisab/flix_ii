Rails.application.routes.draw do
  resources :genres
  root "movies#index"
  resources :users
  get "signup" => "users#new"

  #get "movies/filter/hits" => "movies#index", scope: "hits"
  #get "movies/filter/flops" => "movies#index", scope: "flops"
  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies
  resources :movies do
    resources :reviews
    resources :favorites
  end

  resource :session
end
