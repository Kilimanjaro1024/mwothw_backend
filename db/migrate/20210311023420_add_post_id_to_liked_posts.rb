class AddPostIdToLikedPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :liked_posts, :post_id, :integer
  end
end
