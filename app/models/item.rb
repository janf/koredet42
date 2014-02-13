class Item < ActiveRecord::Base
  self.table_name = "item"
  belongs_to :item_type
  belongs_to :item_class

end
