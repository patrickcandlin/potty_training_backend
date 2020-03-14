class Child < ApplicationRecord
    has_many :potties
    validates :name, presence: true 

    def list_potties
        current_time = DateTime.now
        current_date = current_time.to_date
        
        [ 
            { "#{ current_date }" => self.potties.where(time: (current_date.to_datetime.midnight..current_date.to_datetime.end_of_day))}, 
            { "#{ current_date - 1 }" => self.potties.where(time: (current_date.to_datetime.midnight- 1..current_date.to_datetime.end_of_day- 1))}, 
            { "#{ current_date - 2 }" => self.potties.where(time: (current_date.to_datetime.midnight- 2..current_date.to_datetime.end_of_day- 2))}, 
            { "#{ current_date - 3 }" => self.potties.where(time: (current_date.to_datetime.midnight- 3..current_date.to_datetime.end_of_day- 3))}, 
            { "#{ current_date - 4 }" => self.potties.where(time: (current_date.to_datetime.midnight- 4..current_date.to_datetime.end_of_day- 4))}, 
            { "#{ current_date - 5 }" => self.potties.where(time: (current_date.to_datetime.midnight- 5..current_date.to_datetime.end_of_day- 5))}, 
            { "#{ current_date - 6 }" => self.potties.where(time: (current_date.to_datetime.midnight- 6..current_date.to_datetime.end_of_day- 6))}, 
        ]
    end
end
