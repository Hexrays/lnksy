class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.integer :folder_id
      t.string :link_url
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
