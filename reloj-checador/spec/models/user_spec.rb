require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should belong_to(:company) }
    it { should have_many(:attendances) }
    it { should have_many(:absences) }
  end

  describe 'validations' do
    it { should validate_presence_of(:company_id) }
    subject { FactoryBot.create :user }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { should validate_length_of(:password).is_at_least(8) }
    it { should validate_uniqueness_of(:private_number).case_insensitive }
    it { should validate_uniqueness_of(:employee_number).case_insensitive }
  end
end
