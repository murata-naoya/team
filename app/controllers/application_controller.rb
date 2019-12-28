class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    enduser_path(current_enduser)
  end
  
  def after_sign_in_path_for(resource)
    if enduser_signed_in?
      enduser_path(current_enduser)
    elsif admin_signed_in?
      admin_products_path
    else
    end
  end

  def after_sign_out_path_for(resource)
    products_path
  end
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name_characters, :first_name_characters, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end

end
