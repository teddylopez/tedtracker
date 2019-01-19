namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime hours"
  task sms: :environment do
    # Schedule for Sundays at 5pm
    # Iterate over all employees, skipping admins
    # Send a message with instructions and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
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
