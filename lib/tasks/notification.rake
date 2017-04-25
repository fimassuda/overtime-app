namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.tuesday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://fillipe-overtime.herokuapp.com"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end

    end
  end

  desc "Send mail notification to managers (admin user) each day to inform of pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users/managers
    # 4. Send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end


end
