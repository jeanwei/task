# Preview all emails at http://localhost:3000/rails/mailers/contact_me
class ContactMePreview < ActionMailer::Preview
  def submitted()
    ContactMeMailer.submitted('sender@example.com', 'How are you?')
  end
end
