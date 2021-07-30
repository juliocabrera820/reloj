require 'faker'

# Companies
Company.create([{ name: 'brightcoders', address: 'c 34 #850 x 90 y 92' }, { name: 'encora', address: 'c 41 #652 x 70 y 72' },
                { name: 'wizeline', address: 'c 28 #356 x 21 y 23' }])

# Administrators
User.create(name: 'george', email: 'geo@gmail.com', position: 'Coordinator', password: '123456789', private_number: '12314',
            employee_number: '784121', company_id: '1')
User.create(name: 'michael', email: 'mich@gmail.com', position: 'Coordinator', password: '123456789', private_number: '12321',
            employee_number: '784114', company_id: '1')

# Employees
10.times do
  User.create(name: Faker::Name.female_first_name, email: Faker::Internet.safe_email, position: 'software engineer',
              private_number: Faker::Number.between(from: 12_322, to: 20_000),
              employee_number: Faker::Number.between(from: 784_122, to: 800_000), company_id: '2')
end

# Employee attendance
Attendance.create(user_id: '3', type: 'check_in', created_at: '2021-07-29 9:01:15', updated_at: '2021-07-29 9:01:15')
Attendance.create(user_id: '4', type: 'check_in', created_at: '2021-07-29 9:02:15', updated_at: '2021-07-29 9:02:15')
Attendance.create(user_id: '5', type: 'check_in', created_at: '2021-07-29 9:03:15', updated_at: '2021-07-29 9:03:15')
Attendance.create(user_id: '6', type: 'check_in', created_at: '2021-07-29 9:04:15', updated_at: '2021-07-29 9:04:15')

# Employee absence
Absence.create(user_id: '7', created_at: '2021-07-29 9:16:15', updated_at: '2021-07-29 9:16:15')
Absence.create(user_id: '8', created_at: '2021-07-29 9:17:15', updated_at: '2021-07-29 9:17:15')
Absence.create(user_id: '9', created_at: '2021-07-29 9:18:15', updated_at: '2021-07-29 9:18:15')
Absence.create(user_id: '10', created_at: '2021-07-29 9:19:15', updated_at: '2021-07-29 9:19:15')
