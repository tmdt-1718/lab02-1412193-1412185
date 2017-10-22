class MessagesController < ApplicationController
	layout 'applicationPage'
	before_action :set_message, only: [:show, :show1, :edit, :update, :destroy]
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
		flash[:success] = "message was sent."
		redirect_to messages_path
   	 	rescue
		flash[:error] = "message fail to send! Please try again"
		end
	end

	def index
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = Message.where(usersend_id: current_user.id).order('created_at asc')
		@readmessage = Message.where(usersend_id: current_user.id).where(:status => true).order('created_at asc')
		@unreadmessage = Message.where(usersend_id: current_user.id).where(:status => false).order('created_at asc')
	end

	#done
	def sent
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		@message = current_user.messages.all.order('created_at asc')
	end

	#done
	def show
		@message = Message.find(params[:id])
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		if (current_user.id != @message.user_id) and (current_user.id != @message.usersend_id)
			redirect_to messages_path, :flash => { :error => "Insufficient rights!" }
		end
	end

	def show1
		@message = Message.find(params[:id])
		@listfriendcurrent = current_user.friendlist.desfriendlists;
		if (current_user.id != @message.user_id) and (current_user.id != @message.usersend_id)
			redirect_to sent_path, :flash => { :error => "Insufficient rights!" }
		end
	end

	def edit
		@message.update(status: true)
		redirect_to message_path(params[:id])
	end
private
	def message_params
		params.require(:message).permit(:title, :content, :usersend_id, :user_id, :typemessage_id)
	end
	def set_message
      @message = Message.find(params[:id])
    end
end
