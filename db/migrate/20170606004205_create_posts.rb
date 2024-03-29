class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :attachment
      t.integer :cached_votes_up
      t.integer :comments_count
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
