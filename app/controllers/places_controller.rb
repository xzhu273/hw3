class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def index
    @places = Place.all 
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where ({"place_id" => @place["id"]})
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
