class UsersQuery
  def initialize(users = User.all)
    @users = users
  end

  def employee
    @users.where(role: 'employee')
  end
end
