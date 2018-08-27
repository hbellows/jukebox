require 'rails_helper'

describe 'song creation' do
  context 'as a visitor' do
    it 'allows creation of song' do

      artist = Artist.create(name: "Johnny Cash")

      visit new_artist_song_path(artist)

      song_title = "Boy Named Sue"
      fill_in :song_title, with: song_title
      fill_in :song_length, with: 200

      click_on "Create Song"

      expect(current_path).to eq(song_path(Song.last))
      expect(page).to have_content(song_title)
      expect(page).to have_content(artist.name)
    end
  end
end
