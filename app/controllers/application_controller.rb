class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    private
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end

    def access_params
        params.require(:access).permit(:user_id, :attr_id)
    end
end
