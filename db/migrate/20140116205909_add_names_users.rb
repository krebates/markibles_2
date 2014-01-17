class AddNamesUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, default: "", null:false
    add_column :users, :last_name, :string, default: "", null:false
  end

  def down
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
  end

end
