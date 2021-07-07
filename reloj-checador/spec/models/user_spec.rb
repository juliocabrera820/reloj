require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:employee_attendance) }
    it { should belong_to(:company) }
  end
end
