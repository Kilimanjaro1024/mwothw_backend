class AddTagsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :tag, :string 
    add_column :liked_posts, :tag, :string 
  end
end
