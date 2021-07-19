class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    
    @data = [{title:'Attendance by day', number:2000, class:'t_attendance', icons:'fas fa-list-alt', i_color:'t_attendance_i_color'},
            {title:'Absence by month', number:60, class:'t_absence', icons:'fas fa-list-alt', i_color:'t_absence_i_color'},
            {title:'Average time employee check in', number:40, class:'t_a_check_in', icons:'far fa-check-circle', i_color:'t_a_check_in_i_color'},
            {title:'Average time employee check out', number:60, class:'t_a_check_out', icons:'fas fa-check-circle', i_color:'t_a_check_out_i_color'}]

  end
end
