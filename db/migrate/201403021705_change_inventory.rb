class ChangeInventory < ActiveRecord::Migration
  def change
   rename_column    :inventory, :amount, :quantity
   remove_reference :inventory, :item_type
   add_reference    :inventory, :item
  end
end

