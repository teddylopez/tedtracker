namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime hours"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification = "Please log into the overtime management dashboard to request overtime or confirm your hours from last week: https://tedtracker.herokuapp.com/"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification)
      end
    end
  end

  desc "Sends email to managers (admins) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
