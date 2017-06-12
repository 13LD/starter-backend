class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :followable_id
      t.integer :follower_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
