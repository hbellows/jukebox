Rails.application.routes.draw do

  root 'songs#index'

  resources :artists, only: [:new, :create, :index], shallow: true do
    resources :songs, only: [:show, :new, :create]
  end
  resources :playlists, only: [:new, :index, :create]
  resources :songs, only: [:index]
  # resources :playlists
  # resources :artists
end
