class Child < ApplicationRecord
    has_many :potties
    validates :name, presence: true 

end
