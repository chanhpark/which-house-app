class HousesController < ApplicationController
  def index
  end

  def new
    @houses = House.new
  end

  def create
    @houses = House.new(house_params)
  end

  private

  def house_params
    params.require(:house).permit(
    :address,
    :city,
    :state,
    :zipcode,
    :size,
    :price
    )
  end
end
