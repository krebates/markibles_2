class EditProductsTable < ActiveRecord::Migration
  def up
    rename_column :products, :seller_id, :user_id
  end

  def down
    rename_column :products, :user_id, :seller_id
  end
end
