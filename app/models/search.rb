class Search < ActiveRecord::Base
  belongs_to :shape
  belongs_to :garment
  belongs_to :occasion
end
