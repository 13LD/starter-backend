class User < ApplicationRecord
  # Include default devise modules  :confirmable.

  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
        
  include DeviseTokenAuth::Concerns::User
  has_one :role
  has_many :posts
  has_many :events
  has_many :comments
  
  after_create :send_confirmation_email, if: -> { !Rails.env.test? && User.devise_modules.include?(:confirmable) }

  private
  def send_confirmation_email
    self.send_confirmation_instructions
  end

  scope :search, -> (name) { where("name like ?", "#{name}%")}
end
