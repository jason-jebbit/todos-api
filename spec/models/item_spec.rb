require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do

  # Association test - ensure an item record belongs to a single todo record
  describe 'associations' do
    it { should belong_to(:todo) }
  end

  # Validation test - ensure column name is present before saving
  describe 'validation' do
    it { should validate_presence_of(:name) }
  end

end
