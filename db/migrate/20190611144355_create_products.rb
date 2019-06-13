class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.integer :rating
      t.integer :category_id

      t.timestamps
    end
  end
end
