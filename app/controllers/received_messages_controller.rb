class ReceivedMessagesController < ApplicationController
  def index
    @count = InboundMessage.count
    @messages = InboundMessage.order(created_at: :desc).page(params[:page] || 1).per(20)
  end
end
