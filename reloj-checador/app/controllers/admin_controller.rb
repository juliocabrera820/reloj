class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @attendances = AttendancesQuery.attendance_by_day
    @month = Date.today.month
    @absences = AbsencesQuery.absence_by_month(@month)
    @query_avg_time_check_in = AttendancesQuery.average_time_employee_check_in_by_month(@month)
    @query_avg_time_check_out = AttendancesQuery.average_time_employee_check_out_by_month(@month)
    @avg_check_in = validate_result_query(@query_avg_time_check_in)
    @avg_check_out = validate_result_query(@query_avg_time_check_out)
    @statistics = [{ title: 'Attendance by day', number: @attendances, class: 't_attendance', icons: 'fas fa-list-alt', i_color: 't_attendance_i_color' },
                   { title: 'Absence by month', number: @absences, class: 't_absence', icons: 'fas fa-list-alt',
                     i_color: 't_absence_i_color' },
                   { title: 'Average time employee check in by month', number: @avg_check_in, class: 't_a_check_in', icons: 'far fa-check-circle',
                     i_color: 't_a_check_in_i_color' },
                   { title: 'Average time employee check out by month', number: @avg_check_out, class: 't_a_check_out', icons: 'fas fa-check-circle',
                     i_color: 't_a_check_out_i_color' }]
  end

  private

  def validate_result_query(query)
    @error_message = 'there was an error'
    query == @error_message ? 0 : query
  end
end
