require 'rails_helper'

RSpec.describe EmployeeAttendance, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:attendance) }
  end
end
