Company.create([{ name: 'bcoders', address: 'c 34 #850 x 90 y 92' }, { name: 'wise', address: 'c 41 #652 x 70 y 72' },
                { name: 'line', address: 'c 28 #356 x 21 y 23' }])
User.create({ name: 'george', email: 'geo@gmail.com', password: '123456789', private_number: '12314',
              employee_number: '784121', company_id: Company.first.id })
