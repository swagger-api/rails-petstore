class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :category_id
      t.string :name
      t.integer :tag_id
      t.string :status
      t.integer :photo_url_id

      t.timestamps
    end
  end
end
