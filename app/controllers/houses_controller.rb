class HousesController < ApplicationController

  def search
    if params[:search].present?
      @houses = House.search(params[:search])
      redirect_to show_path
    else
      @houses = House.all
    end
  end

  def index

  end

  def show

  end

  def new
    @houses = House.new
  end

  def create
    @houses = House.new(house_params)
  end

  def import
    House.import(params[:file])
    redirect_to houses_path, notice: "Houses added Successfully"
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
