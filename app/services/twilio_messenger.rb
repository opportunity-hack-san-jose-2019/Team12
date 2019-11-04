class TwilioMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: ENV["PHONE_NUMBER"],

      to: ENV["TO_PHONE_NUMBER"],
      body: message
    })
  end
end
