Rails.application.config.middleware.use OmniAuth::Builder do
OmniAuth.config.full_host = Rails.env.production? ? 'https://fathomless-bastion-13925.herokuapp.com/' : 'http://localhost:3000'

  provider :facebook, "824688744345552", "2d3b81dd6105c26a1bbf94677852561f",info_fields: 'first_name,last_name,email',
scope: 'public_profile,email',
image_size: 'large',
client_options: {
site: 'https://graph.facebook.com/v2.6',
authorize_url: 'https://www.facebook.com/v2.6/dialog/oauth'
}
  provider :google_oauth2, "895506813976-urgi8tgmpddkf2h2kqirhknd8kuh54kr.apps.googleusercontent.com",   "viclVjieNIutMteARG7mmcy7",
  {
	prompt: 'select_account consent',
    access_type: 'offline',
    scope: 'userinfo.profile,userinfo.email,youtube',
    }
end