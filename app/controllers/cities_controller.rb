class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @listings = @city.listings
  end

  # def new
  #   @city = City.new
  # end

  # def edit
  #   @city = City.find(params[:id])
  # end

  # def create
  #   @city = City.new(city_params)
  #   @city.save
  #   redirect_to @city 
  # end

  # def update
  #   @city = City.find(params[:id])
  #   @city.update(city_params)
  #   redirect_to @city 
  # end


  private 

  def city_params
    params.require(:city).permit(:name)
  end

end
