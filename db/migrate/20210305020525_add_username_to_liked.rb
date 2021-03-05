class AddUsernameToLiked < ActiveRecord::Migration[6.1]
  def change
    add_column :liked_posts, :username, :string
  end
end
