class ApplicationController < ActionController::Base
    # Rails 4.x.x and newer
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :birthdate, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update,  keys: [:username, :email, :birthdate, :password, :password_confirmation, :avatar])
    end
end
