class UsersQuery
  def self.employees
    User.all.where(role: 'employee')
  end

  def self.employee(id)
    User.where(id: id, role: 'employee').first
  end
end
