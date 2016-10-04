class ContactNotifier < ApplicationMailer
  default :from => "kf.two.two@gmail.com"
  def send_email(contact)
    @contact = contact
    mail( :to => "kf.two.two@gmail.com",
    :subject => @contact.subject)
  end
end
