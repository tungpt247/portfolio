class UserMailer < ApplicationMailer

  def welcome_email
    mail(to: 'tungpt247@gmail.com', subject: 'Welcome me')
  end
end
