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

end
