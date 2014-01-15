class Ratings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
    t.integer  :overall_rating, null: false
    t.integer  :flavor, null: false
    t.integer  :presentation, null: false
    t.string   :additional_comments
    t.integer  :user_id
    t.integer  :product_id
    t.integer  :seller_id
    t.integer  :ratable_id
    t.string   :ratable_type
    t.timestamps
    end
    add_index :ratings, [:ratable_id, :ratable_type]
  end
end
