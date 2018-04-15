class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def show
    user = User.find(params[:id])
  end
end
