class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user_id
      t.string :receiver_name
      t.string :receiver_phone
      t.string :receiver_address
      t.integer :status
      t.timestamps
    end
  end
end
