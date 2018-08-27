class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    require "pry"; binding.pry

  end

end
