class PlacesController < ApplicationController
  def index
  	@places = Place.all.order(:name)
  end

  def show
  	@place = Place.find(params[:id])
  end

  def create
  	@place = Place.new(place_params)

  	@place.save
  	redirect_to @places
  end
  
  def new
  	@place = Place.new
  end

  def edit
  	@place = Place.find(params[:id])
  end
  
  def update
  	@place = Place.find(params[:id])

  	@place.update
  	redirect_to @places
  end
  
  def destroy
  	@place = Place.find(params[:id])

  	@place.destroy
  	redirect_to @places
  end

end
