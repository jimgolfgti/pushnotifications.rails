class EventNotificationProcessor
	def initialize(type, notification)
    @type = type
    @notification = notification
  end

  def process
    message = OutboundMessage.find_or_create_by_message_id(@notification.message_id)
    message.send "#{@type}_at=", @notification.occurred_at
    message.save
  end
end