class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def show
    @user = current_user
  end
end
