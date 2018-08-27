class SongsController < ApplicationController
  def index
    @songs = Song.all
    @grouped_songs = Song.all.each_slice(4)
  end
end
