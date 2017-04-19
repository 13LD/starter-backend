class AddTypesToTheRoles < ActiveRecord::Migration[5.0]
  def change
  	 add_column :roles, :role_type, :integer, default: 0
  	 add_reference :roles, :user, index: true, foreign_key: true
  end
end
