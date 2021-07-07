require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it { should have_many(:employee_attendance) }
  end
end
