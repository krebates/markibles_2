class AddSeller < ActiveRecord::Migration
  def change
      git create_table :sellers do |t|
      t.string :store_website
      t.string :name, null:false
      t.integer :user_id
      t.timestamps
    end
  end
end
