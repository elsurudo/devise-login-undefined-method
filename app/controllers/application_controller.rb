class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    stored_path = stored_location_for(resource)
  
    return stored_path if stored_path
  
    if resource == :admin
      root_path
    end
  end
  
  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    end
  end
end
