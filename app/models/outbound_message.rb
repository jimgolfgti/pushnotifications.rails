class OutboundMessage < ActiveRecord::Base
  attr_accessible :delivered_at, :failed_at, :id, :message_id
  validates :message_id, presence: true
end
