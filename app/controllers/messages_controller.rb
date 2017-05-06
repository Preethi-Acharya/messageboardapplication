class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index]

	layout 'message_layout'
	
	def index
		@messages = Message.all.order("created_at DESC")
	end

	def new
		@message = current_user.messages.build
	end

	def create
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to new_user_session_path
		else
			redirect_to new_message_path
		end
	end

	def show

	end

	def edit

	end

	def update
		if @message.update(message_params)
			MessageMailer.update_notification(@message.message, current_user.email).deliver
			redirect_to message_path(@message)
		else
			render 'edit'
		end
	end

	def destroy
		@message.destroy
		redirect_to messages_path
	end

	private

	def message_params
		params.require(:message).permit(:message, :message_detail)
	end

	def find_message
		@message = Message.find(params[:id])
	end
end
