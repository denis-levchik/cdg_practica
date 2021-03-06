class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(user)
        feed_posts_path
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio])
    end
end
