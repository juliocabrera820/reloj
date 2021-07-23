include AttendanceHelper

class AttendancesQuery
  def self.attendance_by_day
    Attendance.where(created_at: Date.today.all_day, type: 'check_in').count
  end

  def self.average_time_employee_check_in_by_month(month)
    @attendances = Attendance.all.where('extract(month from created_at) = ? AND type = ?', month, 0)
    @times = []
    @attendances.map do |attendance|
      @times << attendance.created_at.to_s(:time)
    end
    calculate_average_of_times(@times)
  end

  def self.average_time_employee_check_out_by_month(month)
    @attendances = Attendance.all.where('extract(month from created_at) = ? AND type = ?', month, 1)
    @times = []
    @attendances.map do |attendance|
      @times << attendance.created_at.to_s(:time)
    end
    calculate_average_of_times(@times)
  end
end
