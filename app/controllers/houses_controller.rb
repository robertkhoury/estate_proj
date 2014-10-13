class HousesController < ApplicationController
  
  def new
  	@house = House.new
  end

  def index
    @search = House.search(params[:q])
    @search.sorts = ['zip asc', 'address desc'] if @search.sorts.empty?
    @houses = @search.result.paginate(page: params[:page], per_page: 20)  # load all matching records
  end

  def show
  	@house = House.find(params[:id])
    receiver = User.find(@house.user_id)
    @micropost = receiver.microposts.build
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = current_user.houses.build(house_params)
    if @house.save
      flash[:success] = "Successful Listing!"
      redirect_to @house
    else
      render 'new'
    end
  end

  def update
    @house = House.find(params[:id])
    if @house.update_attributes(house_params)
      flash[:success] = "Listing updated"
      redirect_to @house
    else
      render 'edit'
    end
  end

  private

    def house_params
      params.require(:house).permit(:address, :price, :state, :county, 
                            :beds, :baths, :square_footage, :lot_size, 
                            :heating_type, :air_conditioning, :garage, 
                            :flooring, :year_built, :basement, :attic, 
                            :parking ,:fireplaces, :appliances, 
                            :house_type, :description, :zip, :city,
                            :floors, :picture, :status, :listing_type, :photos)
    end

end
