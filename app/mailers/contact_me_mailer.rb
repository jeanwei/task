class ContactMeMailer < ApplicationMailer
  def submitted(email, message)
    @email = email
    @message = message
    mail(to: ENV['OWNER_EMAIL'],
         from: @email,
         subject: 'New Message')
  end
end
