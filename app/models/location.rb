class Location < ActiveRecord::Base
  self.table_name = "location"
  belongs_to :location_class
  belongs_to :location_type
  
end
