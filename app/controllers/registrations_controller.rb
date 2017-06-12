class RegistrationsController < DeviseTokenAuth::RegistrationsController
  	
  	def create
  		super
  		@resource.role = Role.new
  	end

    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :nickname)
    end

end