class AddEmployeeNumberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employee_number, :string
  end
end
