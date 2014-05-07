class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :pet_id
      t.integer :quantity
      t.string :status
      t.datetime :ship_date

      t.timestamps
    end
  end
end
