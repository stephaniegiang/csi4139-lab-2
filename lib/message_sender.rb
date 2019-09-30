module MessageSender
  def self.send_code(phone_number, code)
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token  = Rails.application.secrets.twilio_auth_token
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
      from:  Rails.application.secrets.twilio_number,
      to:    phone_number,
      body:  code
    )

    message.status == 'queued'
  end
end