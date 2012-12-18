class Property < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :internet_included, :manager_id, :owner_id, :owner_name, :parking_allotment, :period_type, :price_per_period, :property_type, :purpose, :rooms, :street_address
end
