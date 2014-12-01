class ContactController < ApplicationController
  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      flash[:success] = 'Message was successfully sent.'
      redirect_to "#contact"
    else
      flash[:danger] = 'Please fill out all fields correctly.'
      redirect_to "#contact"
    end
  end

end
