require 'rails_helper'

RSpec.describe Potty, type: :model do
  describe 'Associations' do
    it { should belong_to(:child) }
  end
  
  describe 'Validations' do 
    it { should validate_presence_of(:excreation_type) }
    it { should validate_presence_of(:child) }
    it { should validate_presence_of(:time) }
  end
  
  
end
