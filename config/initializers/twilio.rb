# put your own credentials here
account_sid = 'AP8f6c7dc3fd144a95906b228b1f61670f'
auth_token = 'd8cf80e7b18ce0fbed0a98f7fd51eb56'

# set up a client to talk to the Twilio REST API
@@sms = Twilio::REST::Client.new account_sid, auth_token