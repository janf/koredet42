class ItemType < ActiveRecord::Base
   self.table_name = "item_type"

   has_many  :items
   accepts_nested_attributes_for :items   
 
end
