class UsersController < ApplicationController

  def edit
  	@user = current_user
  end

  def update
  	if current_user.update(user_params)
  		flash.now[:alert]= 'プロフィールが正常に更新されました'
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  def edit_varification
  end

  def media
  end

  def show
    @user = current_user
  end
  
  private

  def user_params
  	params.require(:user).permit(:email, :last_name, :first_name, :sex, :birth_day, :phone_number, :language, :currency, :address, :profile, :school, :workplace )
  end
end
