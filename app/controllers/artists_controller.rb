class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to '/artists'
    else
      flash[:notice] = "Artist not created. Need to input artist's name"
      render :new
    end
  end

  private

  def artist_params
    params.permit(:name, :id)
  end
end
