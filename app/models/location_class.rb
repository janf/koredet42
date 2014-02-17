class LocationClass < ActiveRecord::Base
   self.table_name = "location_class"

   has_many  :locations
   accepts_nested_attributes_for :locations   
  

end
