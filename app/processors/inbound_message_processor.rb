class InboundMessageProcessor
  def initialize(notification)
    @notification = notification
  end

  def process
    message = InboundMessage.new
    message.notification_id = @notification.id
    message.message_id = @notification.message_id
    message.account_id = @notification.account_id
    message.message_text = @notification.message_text
    message.from = @notification.from
    message.to = @notification.to
    message.save
  end
end