class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  belongs_to :company
  has_many :employee_attendance

  # validates_presence_of :name, :email, :position, :private_number, :employee_number, :company_id

  enum status: %i[active inactive]
  enum role: %i[employee admin]
end
