require 'rails_helper'

# Test suite for the Todo model
# NOTE: shoulda-matchers used - "Shoulda Matchers provides RSpec- and Minitest-compatible one-liners to test common Rails functionality that, if written by hand, would be much longer, more complex, and error-prone."

RSpec.describe Todo, type: :model do

  # Association test - ensure Todo model has a 1:m relationship with the Item model
  describe 'associations' do
    it { should have_many(:items).dependent(:destroy) }
  end

  # Validation tests - ensure columns title and created_by are present before saving
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:created_by) }
  end

end
