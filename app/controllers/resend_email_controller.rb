class ResendEmailController < ApplicationController
  def resend_email
  	resource = User.first
    resource.send_confirmation_instructions({email: "annisokay9@gmail.com"})
  
  end
end
