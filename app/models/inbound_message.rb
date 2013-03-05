class InboundMessage < ActiveRecord::Base
  attr_accessible :account_id, :from, :notification_id, :message_id, :message_text, :to
  validates :notification_id, :message_id, :account_id, :message_text, :from, :to, presence: true
end
