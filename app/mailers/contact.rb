class Contact < ActionMailer::Base
  default from: Rails.application.config.mail[:noreply]
  default to: Rails.application.config.mail[:contact]

  def contact_email(contact)
    @contact = contact
    mail(:subject => "Message from: " + @contact[:name] )
  end
end
