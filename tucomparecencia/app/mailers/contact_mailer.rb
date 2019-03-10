class ContactMailer < ApplicationMailer
  default from: 'tucomparecencia@gmail.com'

  def contact_send(contact)
    @contact = contact
    mail(to: 'rsuarez.adv@gmail.com', cc: 'tucomparecencia@gmail.com',subject: @contact.subject)
  end
end
