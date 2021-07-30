class AddPrivateNumberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :private_number, :string
  end
end
