class Station < ActiveRecord::Base
  belongs_to :retailer
  has_one :tank
end
