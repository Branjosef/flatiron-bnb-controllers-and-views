class ListingsController < ApplicationController

def index
  @listings = Listing.all
end

def show
  @listing = Listing.find(params[:id])

end

# def new 
#   @listing = Listing.new
# end

# def create
#   @listing.new(listing_params)
#   @listing.save 
#   redirect_to @listing
# end


private
def listing_params
params.require(:listing).permit(:address, :listing_type, :title, :description, :price, :neighborhood_id, :host_id)
end


end
