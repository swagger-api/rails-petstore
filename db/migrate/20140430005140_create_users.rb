class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :username
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :user_status
      t.string :password
      t.timestamps
    end
  end
end
