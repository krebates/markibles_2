class EliminatePhotoColumn < ActiveRecord::Migration
  def up
    remove_column :products, :photo
  end

  def down
    add_column :products, :photo, :string
  end
end
