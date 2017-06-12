class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :cached_votes_up
      t.integer :comments_count
      t.string :name
      t.datetime :when
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
