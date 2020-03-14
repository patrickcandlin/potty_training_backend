class Potty < ApplicationRecord
  belongs_to :child
  validates :excreation_type, presence: true
  validates :child, presence: true
  validates :time, presence: true

end
