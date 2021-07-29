class ReportsController < ApplicationController
  include ReportHelper

  before_action :set_companies

  def index; end

  def daily_attendance; end

  def daily_attendance_pdf
    @users = AttendancesQuery.attendance_by_day_and_company(params[:id])
    @company = params[:company]
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "company_daily_attendance_#{@company}", template: 'reports/attendance_day.html.erb'
      end
    end
  end

  def monthly_absence; end

  def monthly_absence_pdf
    @month = month_name(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "monthly_absence_#{@month}", template: 'reports/month_absence.html.erb'
      end
    end
  end

  def average_time_in; end

  def average_time_in_pdf
    @month = month_name(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "avg_time_in_employee_#{@month}", template: 'reports/avg_time_in.html.erb'
      end
    end
  end

  def average_time_out; end

  def average_time_out_pdf
    @month = month_name(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "avg_time_out_employee_#{@month}", template: 'reports/avg_time_out.html.erb'
      end
    end
  end

  private

  def set_companies
    @companies = Company.all
  end
end
