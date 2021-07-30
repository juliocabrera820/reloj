class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: %i[show edit update destroy update_status]
  before_action :set_companies, only: %i[new edit create update]

  def index
    per_page ||= 8
    @pagy, @employees = pagy(UsersQuery.employees, items: per_page)
  end

  def new
    @employee = User.new
  end

  def show
    @employee_presenter = EmployeePresenter.new(@employee)
  end

  def create
    @employee = User.new(employee_params)
    @employee.role = 'employee'
    if @employee.save
      flash[:success] = 'employee has been successfully created'
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @employee.update(employee_params)
      flash[:success] = 'employee has been successfully updated'
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    flash[:danger] = 'employee has been successfully destroyed'
    redirect_to employees_path
  end

  def update_status
    @current_status = @employee.status == 'active' ? 'inactive' : 'active'
    @employee.update(status: @current_status)
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:user).permit(:name, :email, :position, :employee_number, :private_number, :company_id)
  end

  def set_employee
    @employee = UsersQuery.employee(params[:id])
  end

  def set_companies
    @companies = Company.all
  end
end
