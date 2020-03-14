FactoryBot.define do 
    factory :caregiver do
        first_name { Faker::Name.name }
        last_name { Faker::Name.last_name }
        email { Faker::Internet.email }
        password { 'test123' }
    end
end