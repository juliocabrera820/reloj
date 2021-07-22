class Attendance < ApplicationRecord
  belongs_to :user
  
  enum type: %i[check_in check_out]
end
