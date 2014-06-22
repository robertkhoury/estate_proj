class HousesController < ApplicationController
  
  def new
  	@house = House.new
  end

  def index
    @houses = House.paginate(page: params[:page])
  end

  def show
  	@house = House.find(params[:id])
  end

  def create
    @house = House.new(house_params)
    if @house.save
      flash[:success] = "Successful listing!"
      redirect_to @house
    else
      render 'new'
    end
  end

  private

    def house_params
      params.require(:house).permit(:address, :price, :state, :county, 
                            :beds, :baths, :square_footage, :lot_size, 
                            :heating_type, :air_conditioning, :garage, 
                            :flooring, :year_built, :basement, :attic, 
                            :parking ,:fireplaces, :appliances, 
                            :house_type, :description, :zip, :city)
    end

end
