class ContactMailer < ActionMailer::Base

  default :to => "plowry812@gmail.com"

  def send(message)
    @message = message
    mail( :subject => @message.subject, :from => @message.email ) do |format|
      format.text
    end
  end
end