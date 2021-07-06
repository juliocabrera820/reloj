class EmployeeAttendance < ApplicationRecord
  has_many :attendances
  has_many :users
  enum type: %i[check_in check_out]
end
