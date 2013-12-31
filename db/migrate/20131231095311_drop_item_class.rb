class DropItemClass < ActiveRecord::Migration
  def change
     remove_column :item_types, :itemclass
  end
end
