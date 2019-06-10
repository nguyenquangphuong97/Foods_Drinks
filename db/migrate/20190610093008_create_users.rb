class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :password_digest
      t.string :remember_digest
<<<<<<< HEAD
      t.boolean :admin
=======

>>>>>>> add model and relationship
      t.timestamps
    end
  end
end
