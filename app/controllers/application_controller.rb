class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	include Pundit

	before_action :configure_devise_permitted_parameters, if: :devise_controller?

	# Pundit: white-list approach.
	after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?
	after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

	# Uncomment when you *really understand* Pundit!
	# rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
	# def user_not_authorized
	#   flash[:alert] = "You are not authorized to perform this action."
	#   redirect_to(root_path)
	# end

	private

   def configure_devise_permitted_parameters
     # Permit the `subscribe_newsletter` parameter along with the other
    # sign up parameters.
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :photo, :photo_cache])
  end

	def skip_pundit?
	  devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
	end
end
