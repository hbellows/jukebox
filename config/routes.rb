Rails.application.routes.draw do

  root 'songs#index'
  resources :songs, only: [:index]
  resources :artists, only: [:new, :create]
  # resources :playlists
  # resources :artists
end
