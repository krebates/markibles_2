class UpdateMessage < ActiveRecord::Migration
  def up
    add_column :messages, :product_id, :integer
  end

  def down
    remove_column :messages, :product_id, :integer
  end
end
