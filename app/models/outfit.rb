class Outfit < ActiveRecord::Base
  belongs_to :shape
  belongs_to :colour
  belongs_to :garment
  belongs_to :occasion

  validates :colour, presence: true
  validates :shape, presence: true
  validates :garment, presence: true
  validates :occasion, presence: true
end
