class HouseTypesController < ApplicationController
  def index
    categories = Category.find(params[:category_id]).category_house_types
    house_types = []
    categories.each do |cate|
      house_types << cate.house_type
    end
    render json: house_types
  end

  def show
    house_type = HouseType.find(params[:id])
    render json: house_type
  end
end
