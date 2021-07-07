class EmployeeAttendance < ApplicationRecord
  belongs_to :user
  belongs_to :attendance
  enum type: %i[check_in check_out]
end
