require 'test_helper'

class OutboundMessageTest < ActiveSupport::TestCase
  test "should not save without message id" do
    message = OutboundMessage.new
    assert !message.save
  end
end
