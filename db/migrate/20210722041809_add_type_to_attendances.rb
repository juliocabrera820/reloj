class AddTypeToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :type, :integer, default: 0
  end
end
