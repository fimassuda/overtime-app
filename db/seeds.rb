@employee = Employee.create(email: "test@test.com",
                    password: "password",
                    password_confirmation: "password",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: '11994352649',
                    ssn: 1234,
                    company: "ABC Company")

puts "employee created"

AdminUser.create(email: "me@fillipemassuda.com",
                  password: "password",
                  password_confirmation: "password",
                  first_name: "Admin",
                  last_name: "employee",
                  phone: '11994352649',
                  ssn: 1234,
                  company: "ABC Company")

puts "Admin employee created"


AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 posts have been created"
