class HostController < ApplicationController
  def index
    # @houses = House.order('id asc').limit 20
  end

  private
  # def create_params
  #   params.require(ポストされた配列).permit(:key1, :key2)
  # end
end
