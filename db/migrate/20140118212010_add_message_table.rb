class AddMessageTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    t.integer :user_id
    t.string :subject, null:false
    t.text :text, null:false
    t.timestamps
    end
  end
end
