class ItemTypeRelationship < ActiveRecord::Migration
  def change
    change_table :items do |t| 
      t.belongs_to :item_types
    end 
  end
end
