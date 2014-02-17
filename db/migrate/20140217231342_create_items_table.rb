class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id, null: false
      t.integer :room_id, null: false
      t.integer :box_id, null: false
      t.string :name, null: false
      t.text :description
      t.string :measurements
      t.text :other
    end
  end
end

