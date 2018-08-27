Rails.application.routes.draw do

  root 'songs#index'
  resources :songs, only: [:index]

  resources :artists, only: [:new, :create, :index], shallow: true do
    resources :songs
  end
  resources :playlists, only: [:new, :index, :create]
  # resources :playlists
  # resources :artists
end
