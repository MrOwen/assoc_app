class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :contact

      t.timestamps
    end
  end
end
