class UsersQuery
  def self.employees
    User.all.where(role: 'employee').order('id ASC')
  end

  def self.employee(id)
    User.where(id: id, role: 'employee').first
  end

  def self.active_employee(private_number)
    User.where(role: 'employee', private_number: private_number, status: 'active').first
  end
end
