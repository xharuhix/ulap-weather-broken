class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
      if @contact.valid?
      ContactMailer.new_message(@contact).deliver
      redirect_to root, notice: 'Message sent'
      else
      flash.now[:error] = 'Cannot send message.'
      render :new
      end
  #   if @contact.deliver
  #     flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
  #   else
  #     flash.now[:error] = 'Cannot send message.'
  #     render :new
  #   end
  # end

  # def new
  #   @message = Message.new
  # end
 
  # def create
  #   @message = Message.new(params[:message])
    
  #   if @message.valid?
  #     NotificationsMailer.new_message(@message).deliver
  #     redirect_to(root_path, :notice => "Message was successfully sent.")
  #   else
  #     flash.now.alert = "Please fill all fields."
  #     render :new
  #   end
  end
end