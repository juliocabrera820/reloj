class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  def index
    @pagy, @employees = pagy(User.all.where(role: 'employee'), items: 8)
  end

  def new
    @employee = User.new
  end

  def show; end

  def create
    @employee = User.new(employee_params)
    @employee.role = 'employee'
    @employee.company_id = 1
    if @employee.save
      flash[:success] = 'employee successfully created'
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit; end

  def update; end

  def destroy
    @employee.destroy
    flash[:danger] = 'employee has been successfully destroyed'
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:user).permit(:name, :email, :position, :employee_number, :private_number)
  end

  def set_employee
    @employee = User.where(id: params[:id], role: 'employee').first
  end
end
