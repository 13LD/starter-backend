Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "824688744345552", "2d3b81dd6105c26a1bbf94677852561f", scope: 'email', info_fields: 'email,first_name,last_name', callback_url: 'http://fathomless-bastion-13925.herokuapp.com/auth/facebook/callback'
  provider :google_oauth2, "895506813976-urgi8tgmpddkf2h2kqirhknd8kuh54kr.apps.googleusercontent.com",   "viclVjieNIutMteARG7mmcy7"
end