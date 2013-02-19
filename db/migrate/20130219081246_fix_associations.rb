class FixAssociations < ActiveRecord::Migration
  def up
    add_column :orders, :item_id, :integer
    remove_column :items, :order_id
  end

  def down
  end
end
