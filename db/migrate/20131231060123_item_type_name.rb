class ItemTypeName < ActiveRecord::Migration
  def change
    change_table :item_types do |t| 
      t.rename :itemtype, :itemtypename
    end 
  end
end
