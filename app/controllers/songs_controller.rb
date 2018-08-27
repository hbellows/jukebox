class SongsController < ApplicationController
  def index
    @songs = Song.all
    @grouped_songs = Song.all.each_slice(4)
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    artist = Artist.find(params[:artist_id])
    song = artist.songs.create(song_params)
    if song.save
      redirect_to song_path(song)
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  private

    def song_params
      params.require(:song).permit(:title, :length, :playcount)
    end
end
