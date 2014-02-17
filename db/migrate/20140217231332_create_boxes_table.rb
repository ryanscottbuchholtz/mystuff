class CreateBoxesTable < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
    end
  end
end
