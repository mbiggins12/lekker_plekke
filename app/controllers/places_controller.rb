class PlacesController < ApplicationController
  def index
  	@places = Place.all.order(:name)
  end

  def show
  	@place = Place.find(params[:id])
  end

  def create
  	@place = Place.new(place_params)

  	if @place.save
	  	redirect_to @places
	else
		render :new
	end
  end
  
  def new
  	@place = Place.new
  end

  def edit
  	@place = Place.find(params[:id])
  end
  
  def update
  	@place = Place.find(params[:id])

  	if @place.update(place_params)
	  	redirect_to @places
	 else
	 	render :edit
	 end
  end
  
  def destroy
  	@place = Place.find(params[:id])

  	@place.destroy
	redirect_to places_path
  end

  private

  def place_params
  	params.require(:place).permit(:name, :description, :address)
  end

end
