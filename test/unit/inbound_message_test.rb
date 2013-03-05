require 'test_helper'

class InboundMessageTest < ActiveSupport::TestCase
  test "should not save without all fields" do
    message = InboundMessage.new
    assert !message.save
  end
end
