Rails.application.routes.draw do
  
  resources :likes
  resources :follows
  resources :comments
  resources :events
  resources :posts
 mount_devise_token_auth_for 'User', at: 'auth', controllers: {
  confirmations:      'devise_token_auth/confirmations',
  passwords:          'devise_token_auth/passwords',
  omniauth_callbacks: 'devise_token_auth/omniauth_callbacks',
  registrations:      'registrations',
  sessions:           'devise_token_auth/sessions',
  token_validations:  'devise_token_auth/token_validations'
 }
  resources :roles
  resources :users
end
