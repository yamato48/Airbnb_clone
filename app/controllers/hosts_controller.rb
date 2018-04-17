class HostsController < ApplicationController
  def index
    # @houses = House.order('id asc').limit 20
  end

  def new
    @host = Host.new
    @user = current_user
  end

  def create
    @host = Host.new(create_params)
  end

  private
  def create_params
    params.require(:host).permit(:caregory, :house_type, :size_of_building, :room_type)
  end
end
