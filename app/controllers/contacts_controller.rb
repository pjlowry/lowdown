class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "Message Sent! We will be in touch soon."
          @contact = Faraday.post do |request|
            request.url "https://api:key-9rie76ae1rn9pt7-wr2p3ghyq-7rexp5@api.mailgun.net/v2/lowdownwebdevelopment.mailgun.org/messages"
            request.headers['Content-Type'] = "application/x-www-form-urlencoded"
            request.headers['Authorization'] = "Basic " + Base64.strict_encode64("api:key-9rie76ae1rn9pt7-wr2p3ghyq-7rexp5")
            request.body = URI.encode_www_form({ :from => "postmaster@lowdownwebdevelopment.mailgun.org",
                          :to => "plowry812@gmail.com",
                          :subject => "Lowdown Web Development Request",
                          :text => "Name: #{@contact.name}, Email: #{@contact.email}, Message: #{@contact.message}"})
          end
    else
      flash[:alert] = "Please provide more information."
    end
  end

  def index
    
  end
end