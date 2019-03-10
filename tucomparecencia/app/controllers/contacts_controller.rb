class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    # UserMailer.send_email(@contact).deliver_now
    # @params= params
    ContactMailer.contact_send(@contact).deliver
    # flash[:notice]= 'formulario enviado'
  end

private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
