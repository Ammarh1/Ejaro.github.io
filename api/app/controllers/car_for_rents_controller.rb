class CarForRentsController < ApplicationController
  before_action :set_car_for_rent, only: %i[ show update destroy ]

  # GET /car_for_rents
  def index
    @car_for_rents = CarForRent.all

    render json: @car_for_rents
  end

  # GET /car_for_rents/1
  def show
    render json: @car_for_rent
  end

  # POST /car_for_rents
  def create
    location = car_for_rent_params
    puts location.inspect
    @ary = Array.new
    cars = CarForRent.all

    cars.each { |item|
     distance = distance([location [ :Latitude],location [ :Longitude]] ,[item.Latitude,item.Longitude]) 
     if (distance < 50) 
      @ary.push(item)
     end
    }

    render json: @ary
  end

  def distance(loc1, loc2)
    rad_per_deg = Math::PI/180  # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters
  
    dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  
    dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg
  
    lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }
  
    a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))
  
    (rm * c)/1000 
  end

  def images 
    @car = CarForRent.find(params[:id])
    render json: CarForRentSerializer.new(@car).serializable_hash[:data][:attributes]
  end

  def Booking 
    from_to = car_for_rent_params
    one_car = CarForRent.find(params[:id])
    puts one_car.inspect
    one_car.update_column(:Available_From, from_to[:Available_Until])
    render json:  {message: "Booked successfully"}
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_for_rent
      @car_for_rent = CarForRent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_for_rent_params
      params.require(:car_for_rent).permit(:make, :model, :Available_From, :Available_Until, :image, :Kilometers_Traveled, :Longitude, :Latitude, :images)
    end
end
