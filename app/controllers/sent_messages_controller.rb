class SentMessagesController < ApplicationController
  def index
    @count = OutboundMessage.count
    @messages = OutboundMessage.order(id: :desc).page(params[:page] || 1).per(20)
  end
end
