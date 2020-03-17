class Caregiver < ApplicationRecord
    has_secure_password
    has_many :child_caregivers
    has_many :children, through: :child_caregivers
    validates :first_name, presence: true, length: { maximum: 50}
    validates :last_name, presence: true, length: { maximum: 50}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
                        presence: true, length: { maximum: 250 },
                        uniqueness: { case_sensitive: false }
end
