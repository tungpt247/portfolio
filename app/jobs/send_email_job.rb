class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    UserMailer.welcome_email().deliver_now
  end
end
