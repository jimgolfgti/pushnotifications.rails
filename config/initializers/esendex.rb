Esendex.configure do |config|
	config.message_delivered_event_handler = lambda { |notification| 
		log_event("delivered", notification)
	}
	config.message_failed_event_handler = lambda { |notification| 
		log_event("failed", notification)
	}
	config.inbound_message_handler = lambda { |notification| 
		log_event("inbound", notification)
	}
end

def log_event(type, notification)
	Rails.logger.info "#{type.upcase} #{notification.to_hash}"
end

