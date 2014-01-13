class AddProducts < ActiveRecord::Migration
  def change
     create_table :products do |t|
      t.string :name, null:false
      t.string :photo
      t.text :description, null:false
      t.integer :seller_id, null:false
      t.decimal :price, null:false
      t.timestamps
    end
  end
end
