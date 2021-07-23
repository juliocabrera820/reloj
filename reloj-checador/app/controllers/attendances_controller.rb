class AttendancesController < ApplicationController
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
    @attendance = initialize_attendance
    @attendance.type = 'check_in'
    if @attendance.save
      flash[:success] = 'You have checked in successfully'
    else
      flash[:warning] = 'You have not checked in'
    end
    redirect_to unauthenticated_admin_path
  end

  def check_out
    @attendance = initialize_attendance
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

  def employee(private_number)
    User.find_by(private_number: private_number)
  end

  def initialize_attendance
    @employee = employee(params[:attendance][:private_number])
    @attendance = Attendance.new
    @attendance.user_id = @employee.id
    @attendance
  end
end
