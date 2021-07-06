class CreateEmployeeAttendance < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_attendance do |t|
      t.integer :type, default: 1

      t.timestamps
    end
  end
end
