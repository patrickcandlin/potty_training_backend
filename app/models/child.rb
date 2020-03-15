class Child < ApplicationRecord
    has_many :potties
    validates :name, presence: true 

    def list_potties
        past_week = (0..6)
        past_week.map{|d| 
            day = { 
                "#{Date.today - d}" => 
                self.day_of_potties(Date.today - d) 
            }
        }
    end

    def day_of_potties(date)
        self.potties.where(time: (
            date.to_datetime.midnight..
            date.to_datetime.end_of_day
        ))
    end
end
