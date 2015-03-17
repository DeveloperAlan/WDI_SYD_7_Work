class ArtistsControllerController < ApplicationController
  def new 
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(
        :first_name,
        :last_name,
        :nationality,
        :date_of_birth,
        :period,
        :image
      )
    )
    redirect_to @artist
  end
end
