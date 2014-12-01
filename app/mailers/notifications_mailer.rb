class NotificationsMailer < ActionMailer::Base

  default :from => "Andre's Portfolio"
  default :to => "andre.fagerberg@icloud.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Andre's Portfolio] #{message.subject}")
  end

end
