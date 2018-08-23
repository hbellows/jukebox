Rails.application.routes.draw do

  root 'songs#index'
  resources :songs, only: [:index]
  # resources :playlists
  # resources :artists
end
