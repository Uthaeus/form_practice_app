User.create!(email: 'test@test.com', name: 'Jim', password: 'asdfasdf', password_confirmation: 'asdfasdf')

puts "1 User created"

vaccs = ['Measles', 'Mumps', 'Rubella', 'Flu']
vaccs.each do |vacc|
  Vacc.create!(title: "#{vacc}")
end

puts "#{vaccs.count} Vaccs created"