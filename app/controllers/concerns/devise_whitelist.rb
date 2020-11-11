module DeviseWhitelist
  extend ActiveSupport::Concern
  
  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end
  
  def configure_permitted_parameters
    # adding custom fields that we adding to signup/reg form, in addition to email & pass
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end