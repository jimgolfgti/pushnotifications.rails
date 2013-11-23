class SentMessagesController < ApplicationController
  def index
    @count = OutboundMessage.count
    @messages = OutboundMessage.all
  end
end
