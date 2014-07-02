class ContactMailer < ActionMailer::Base
  default :from => "noreply@gmail.com"
  default :to => "ulap.research@gmail.com"
 
  def new_message(contact)
    @contact = contact
    # mail(:subject => "#{contact.subject}")
    mail(to: @contact.email, subject: @contact.subject)
  end
 


end
