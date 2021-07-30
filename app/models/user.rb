class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  belongs_to :company
  has_many :attendances
  has_many :absences
  enum status: %i[active inactive]
  enum role: %i[employee admin]

  validates :name, :email, :private_number, :employee_number, :position, :company_id, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :private_number, :employee_number, uniqueness: { case_sensitive: false }
end
