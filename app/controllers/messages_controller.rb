class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.create(message_params)
		if @message.save
			redirect_to root_path
		else
			redirect_to new_message_path
		end
	end

	private

	def message_params
		params.require(:message).permit(:message, :message_detail)
	end
end
