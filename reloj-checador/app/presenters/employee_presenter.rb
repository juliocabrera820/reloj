class EmployeePresenter
  def initialize(employee)
    @employee = employee
  end

  def badge_color
    @employee.status == 'active' ? 'bg-success' : 'bg-danger'
  end
end
