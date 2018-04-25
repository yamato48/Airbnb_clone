class HostsController < ApplicationController
  before_action :set_user
  before_action :set_host
  before_action :set_host_id, only: [:show, :photos, :description, :title, :guest_requirements, :house_rules, :review_guest_requirements, :review_how_guests_book, :keep_calendar_up_to_date, :availability_questions, :calendar, :price, :additional_pricing, :local_law, :update]
  def index
    # @houses = House.order('id asc').limit 20
  end

  def rooms
  end

  def bedrooms
  end

  def bathrooms

  end

  def location
  end

  def amenities
  end

  def create
    @host = Host.new(host_params)
    @host.save
    if @host.save
      redirect_to host_path(id: @host.id)
    else
      render :amenities
    end
  end

  def show
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

  def update
    if @host.user_id == current_user.id
      @host.update(host_params)
      redirect_to host_path(id: @host.id)
    end
  end

  private
  def host_params
    params.require(:host).permit(:category, :house_type, :size_of_building, :room_type, :capacity, :num_bedroom, :num_of_bath, :country, :postal_code, :state, :city, :address_line_1, :address_line_2, :house_description, :house_name).merge(user_id: current_user.id)
  end

  def set_user
    @user = current_user
  end

  def set_host
    @host = Host.new
  end

  def set_host_id
    @host = Host.find(params[:id])
  end
end
