class HostsController < ApplicationController
  before_action :set_user
  def index
    # @houses = House.order('id asc').limit 20
  end

  def rooms
    @host = Host.new
  end

  def bedrooms
    @host = Host.new
  end

  def bathrooms
    @host = Host.new
  end

  def location
    @host = Host.new
  end

  def amenities
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    @host.save
    if @host.save
      redirect_to host_path(id: @user.id)
    else
      render :amenities
    end
  end

  def show
    @host = Host.find(params[:id])
  end

  def photos
  end

  def description
  end

  def title
  end

  def guest_requirements
  end

  def house_rules
  end

  def review_guest_requirements
  end

  def review_how_guests_book
  end

  def keep_calendar_up_to_date
  end

  def availability_questions
  end

  def calendar
  end

  def price
  end

  def additional_pricing
  end

  def local_law
  end

  private
  def host_params
    params.require(:host).permit(:category, :house_type, :size_of_building, :room_type, :capacity, :num_bedroom, :num_of_bath, :country, :postal_code, :state, :city, :address_line_1, :address_line_2,).merge(user_id: current_user.id)
  end

  def set_user
    @user = current_user
  end
end
