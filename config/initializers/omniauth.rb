Rails.application.config.middleware.use OmniAuth::Builder do
OmniAuth.config.full_host = Rails.env.production? ? 'https://fathomless-bastion-13925.herokuapp.com/' : 'http://localhost:3000'

  provider :facebook, "824688744345552", "2d3b81dd6105c26a1bbf94677852561f",
  scope: 'public_profile, publish_actions, user_about_me',
  info_fields: 'id, email, first_name, last_name, link, picture',
  image_size: {:width => 165, :height => 165}
  
  provider :google_oauth2, "895506813976-urgi8tgmpddkf2h2kqirhknd8kuh54kr.apps.googleusercontent.com",   "viclVjieNIutMteARG7mmcy7",
  {
	prompt: 'select_account consent',
    access_type: 'offline',
    scope: 'userinfo.profile,userinfo.email,youtube',
	redirect_uri: 'https://fathomless-bastion-13925.herokuapp.com/auth/google_oauth2/callback'
    }
end