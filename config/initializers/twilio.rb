# put your own credentials here
account_sid = 'AC7f19e15a872143d290c1719d98d19894'
auth_token = '4c40861766dff82a030acc54373173df'

# set up a client to talk to the Twilio REST API
@@client = Twilio::REST::Client.new account_sid, auth_token
