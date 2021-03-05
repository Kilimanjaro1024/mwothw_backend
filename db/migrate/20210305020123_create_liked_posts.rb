class CreateLikedPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :liked_posts do |t|
      t.string :title
      t.string :topic
      t.string :content
      t.integer :likes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
