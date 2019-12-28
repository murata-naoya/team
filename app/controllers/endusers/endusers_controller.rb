class Endusers::EndusersController < ApplicationController
  def show
    @user = Enduser.find(params[:id])
  end

  def edit
    @user = Enduser.find(params[:id])
  end

  def update
    @user = Enduser.find(params[:id])
    if @user.update(user_params)
      redirect_to enduser_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = current_enduser
    @user.destroy
    redirect_to products_path
  end

  private
  def user_params
    params.require(:enduser).permit(:profile_image, :last_name_characters, :first_name_characters, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :phone_number)
  end
end
