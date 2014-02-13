class ItemClass < ActiveRecord::Base
   self.table_name = "item_class"

   has_many  :items
   accepts_nested_attributes_for :items   
  

end
