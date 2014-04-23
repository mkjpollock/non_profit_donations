require 'spec_helper'

describe Contribution do
  StripeMock.start
    customer = Stripe::Customer.create(
    :email => 'me@me.com',
    :card => 'valid_card_token'
  )

end
