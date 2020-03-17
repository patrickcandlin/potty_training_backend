class ChildCaregiver < ApplicationRecord
  belongs_to :Caregiver
  belongs_to :Child
end
