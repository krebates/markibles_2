class TakeNullFromUsers < ActiveRecord::Migration
  def up
    change_column :products, :user_id, :integer, :null => true
  end

  def down
    change_column :products, :user_id, :integer, :null => false
  end

end
