class MessagesController < ApplicationController
	layout 'applicationPage'
	before_action :set_message, only: [:show, :edit, :update, :destroy]
	def new
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = Message.new
		@typemessage = Typemessage.all
	end

	def create
		begin
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = current_user.messages.new(message_params)
		@message.save
		flash[:success] = "message was sent ."
		redirect_to
   	 	rescue
		flash[:error] = "message fail to send! Please try again"
		end
	end

	def index
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = Message.where(usersend_id: current_user.id)
		@readmessage = Message.where(usersend_id: current_user.id).where(:status => true)
		@unreadmessage = Message.where(usersend_id: current_user.id).where(:status => false)
	end

	#done
	def sent
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = current_user.messages.all
	end

	#done
	def show
		@listfriendcurrent = current_user.friendlist.desfriendlists;
	end
private
	def message_params
		params.require(:message).permit(:title, :content, :usersend_id, :user_id, :typemessage_id)
	end
	def set_message
      @message = Message.find(params[:id])
    end
end
