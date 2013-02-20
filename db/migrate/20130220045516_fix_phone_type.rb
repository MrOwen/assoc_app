class FixPhoneType < ActiveRecord::Migration
  def up
    change_column :customers, :phone, :float
  end

  def down
  end
end
