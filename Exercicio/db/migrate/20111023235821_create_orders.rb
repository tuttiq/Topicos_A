class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :client
      t.references :product
      t.integer :amount
      t.date :date

      t.timestamps
    end
    add_index :orders, :client_id
  end
end
