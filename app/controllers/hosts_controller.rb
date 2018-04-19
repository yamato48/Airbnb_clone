class HostsController < ApplicationController
  def index
    @user = current_user
    # @houses = House.order('id asc').limit 20
  end

  def new
    @host = Host.new
    @user = current_user
    # @house_types = House_type.all
  end

  def create
    @host = Host.new(host_params)
    @host.save
  end

  def bedrooms
    @host = Host.new(host_params)
  end

  def bathrooms
    @host = Host.new(host_params)
  end

  def location
    @host = Host.new(host_params)
  end

  def amenities
    @host = Host.new(host_params)
  end

  private
  def host_params
    params.require(:host).permit(:category, :house_type, :size_of_building, :room_type, :capacity, :num_bedroom).merge(user_id: current_user.id)
  end
end
