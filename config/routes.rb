Rails.application.routes.draw do
  resources :artists, except: [:show]
  resources :artists, only: [:show] do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  root "artists#index"
end
