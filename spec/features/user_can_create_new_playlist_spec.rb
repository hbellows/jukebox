require 'rails_helper'

describe 'As a user' do
  it 'should create playlist' do

    playlist_name = "Jock Jamzz 1997"

    visit new_playlist_path

    fill_in 'playlist[name]', with: playlist_name
    click_on "Create Playlist"

    expect(current_path).to eq(playlists_path)
    expect(page).to have_content(playlist_name)
  end
end
