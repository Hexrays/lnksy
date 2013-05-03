class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
