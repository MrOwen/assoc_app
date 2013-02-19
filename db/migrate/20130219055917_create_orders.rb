class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :name
      t.float :cost

      t.timestamps
    end
  end
end
