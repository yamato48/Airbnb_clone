class HostsController < ApplicationController
  before_action :set_host, only: [:rooms, :bedrooms, :bathrooms, :location, :amenities]
  before_action :set_user
  before_action :set_host_id, only: [:show, :photos, :description, :title, :guest_requirements, :house_rules, :review_guest_requirements, :review_how_guests_book, :keep_calendar_up_to_date, :availability_questions, :calendar, :price, :additional_pricing, :local_law, :update]

  def index
  end

  def rooms
  end

  def bedrooms
    session[:user_category] = host_params[:category]
    session[:user_house_type] = host_params[:house_type]
    session[:user_room_type] = host_params[:room_type]
    set_sessions
  end

  def bathrooms
    session[:user_capacity] = host_params[:capacity]
    session[:user_num_bedroom] = host_params[:num_bedroom]
    set_sessions
  end

  def location
    session[:user_num_of_bath] = host_params[:num_of_bath]
    set_sessions
  end

  def amenities
    session[:user_country] = host_params[:country]
    session[:user_postal_code] = host_params[:postal_code]
    session[:user_state] = host_params[:state]
    session[:user_city] = host_params[:city]
    session[:user_address_line_1] = host_params[:address_line_1]
    session[:user_address_line_2] = host_params[:address_line_2]
    set_sessions
  end

  def create
    set_sessions
    @host = Host.new( \
      user_id: @user,\
      category: @user_category, \
      house_type: @user_house_type, \
      room_type: @user_room_type, \
      capacity: @user_capacity, \
      num_bedroom: @user_num_bedroom, \
      num_of_bath: @user_num_of_bath, \
      country: @user_country, \
      postal_code: @user_postal_code, \
      state: @user_state, \
      city: @user_city, \
      address_line_1: @user_address_line_1, \
      address_line_2: @user_address_line_2 \
      )
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
  def set_sessions
    @user_category = session[:user_category]
    @user_house_type = session[:user_house_type]
    @user_room_type = session[:user_room_type]
    @user_capacity = session[:user_capacity]
    @user_num_bedroom = session[:user_num_bedroom]
    @user_num_of_bath = session[:user_num_of_bath]
    @user_country = session[:user_country]
    @user_postal_code = session[:user_postal_code]
    @user_state = session[:user_state]
    @user_city = session[:user_city]
    @user_address_line_1 = session[:user_address_line_1]
    @user_address_line_2 = session[:user_address_line_2]
  end

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
