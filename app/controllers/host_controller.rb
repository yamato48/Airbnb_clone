class HostController < ApplicationController
  def index
  end

  def new
    @host = Host.new
  end

  def create
  end

  private
  def host_params
    params.require(:host).permit()
  end
end
