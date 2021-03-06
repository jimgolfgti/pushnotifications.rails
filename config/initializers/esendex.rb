Esendex.configure do |config|
	config.message_delivered_event_handler = lambda { |notification| 
		EventNotificationProcessor.new(:delivered, notification).process
	}
	config.message_failed_event_handler = lambda { |notification| 
		EventNotificationProcessor.new(:failed, notification).process
	}
	config.inbound_message_handler = lambda { |notification| 
		log_event("inbound", notification)
		InboundMessageProcessor.new(notification).process
	}
end

def log_event(type, notification)
	Rails.logger.info "#{type.upcase} #{notification.to_hash}"
end

