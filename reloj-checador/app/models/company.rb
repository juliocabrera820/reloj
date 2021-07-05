class Company < ApplicationRecord
  validates :name, :address, presence: true
end
