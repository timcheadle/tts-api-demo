class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :customer
      t.string :payment_status
      t.string :fulfillment_status
      t.decimal :total_price

      t.timestamps
    end
  end
end
