class Outfit < ActiveRecord::Base
  belongs_to :shape
  belongs_to :colour
  belongs_to :garment
  belongs_to :occasion
end
