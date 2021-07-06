class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :employee_attendance
  has_many :companies
  enum status: %i[active inactive]
  enum role: %i[employee admin]
  
end
