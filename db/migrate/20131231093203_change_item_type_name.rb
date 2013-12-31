class ChangeItemTypeName < ActiveRecord::Migration
  def change
   change_table :item_types do |t| 
      t.rename :itemtypename, :item_type_name
    end 
  end
end
