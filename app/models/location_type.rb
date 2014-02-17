class LocationType < ActiveRecord::Base
   self.table_name = "location_type"

   has_many  :locations
   accepts_nested_attributes_for :locations   
  

end
