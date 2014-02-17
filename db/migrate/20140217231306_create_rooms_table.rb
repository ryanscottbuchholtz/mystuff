class CreateRoomsTable < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
    end
  end
end
