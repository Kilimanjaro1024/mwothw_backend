class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      
      t.integer :num_posts

      t.timestamps
    end
  end
end
