class OutboundMessage < ActiveRecord::Base
  attr_accessible :delivered_at, :failed_at, :id, :message_id
  validates :message_id, presence: true

  def status
    return "Delivered" unless delivered_at.nil?
    return "Failed" unless failed_at.nil?
    return "Sent"
  end
end
