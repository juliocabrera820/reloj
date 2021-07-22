FactoryBot.define do
  factory :user do
    name { 'george' }
    email { 'geo@gmail.com' }
    password { '123456789' }
    private_number { '12456' }
    employee_number { '45452' }
    company factory: :company
  end
end
