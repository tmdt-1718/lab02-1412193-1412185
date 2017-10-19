class MessagesController < ApplicationController
	layout 'applicationPage'
	def new
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		
	end

	def create
		begin
		@message = Message.new(message_params)
		@message.save
		flash[:success] = "message was sent ."
   	 	rescue
			flash[:error] = "message fail to send! Please try again"
		end
		end

	def index
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		end
	def message_params
		params.require(:message).permit(:user_id, :title, :content, :receiver_id)
	end
end
