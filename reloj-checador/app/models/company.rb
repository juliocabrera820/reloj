class Company < ApplicationRecord
  validates :name, :address, presence: true
  has_many :users
end
