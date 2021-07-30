class AttendancesController < ApplicationController
  include AttendanceHelper

  def check
    @attendance = Attendance.new
  end

  def employee_check
    if params[:commit] == 'Check in'
      check_in
    else
      check_out
    end
  end

  def check_in
    @employee = UsersQuery.active_employee(params[:attendance][:private_number])
    unless @employee
      flash[:danger] = 'You are an inactive employee'
      return redirect_to unauthenticated_admin_path
    end
    unless validate_check_in_time
      flash[:danger] = 'You have absence'
      Absence.create(user_id: @employee.id)
      return redirect_to unauthenticated_admin_path
    end
    @attendance = initialize_attendance(@employee)
    @attendance.type = 'check_in'
    if @attendance.save
      flash[:success] = 'You have checked in successfully'
    else
      flash[:warning] = 'You have not checked in'
    end
    redirect_to unauthenticated_admin_path
  end

  def check_out
    @employee = UsersQuery.active_employee(params[:attendance][:private_number])
    unless @employee
      flash[:danger] = 'You are an inactive employee'
      return redirect_to unauthenticated_admin_path
    end
    @attendance = initialize_attendance(@employee)
    @attendance.type = 'check_out'
    if @attendance.save
      flash[:success] = 'You have checked out successfully'
    else
      flash[:warning] = 'You have not checked out'
    end
    redirect_to unauthenticated_admin_path
  end

  private

  def attendance_params
    params.require(:attendance).permit(:private_number)
  end

  def initialize_attendance(employee)
    @attendance = Attendance.new
    @attendance.user_id = employee.id
    @attendance
  end
end
