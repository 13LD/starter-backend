class Role < ApplicationRecord
	belongs_to :user
	enum role_type: [ :User, :SuperVisor, :Admin ]

end
