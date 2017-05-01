Devise.setup do |config|
  # The e-mail address that mail will appear to be sent from
  # If absent, mail is sent from "please-change-me-at-config-initializers-devise@example.com"
  config.mailer_sender = "mailboxtrack@gmail.com"
# Rails.application.config.to_prepare do              # to_prepare ensures that the monkey patching happens before the first request
#   Devise::OmniauthCallbacksController.class_eval do # reopen the class
#     def failure                                     # redefine the failure method
#       set_flash_message! :alert, :failure, kind: OmniAuth::Utils.camelize(failed_strategy.name), reason: failure_message
#       redirect_to after_omniauth_failure_path_for(resource_name)
#     end
#   end
# end
  # If using rails-api, you may want to tell devise to not use ActionDispatch::Flash
  # middleware b/c rails-api does not include it.
  # See: http://stackoverflow.com/q/19600905/806956
  config.navigational_formats = [:json]
end