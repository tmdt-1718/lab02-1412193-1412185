class HomesController < ApplicationController
  layout 'applicationPage'
  before_action :authenticate_user!
  def index
    @listfriendcurrent = current_user.friendlist.desfriendlists;
    @sentmessages = current_user.messages.all.order('created_at desc')
    @unreadmessages = Message.where(usersend_id: current_user.id).where(:status => false).order('created_at asc')
    @friendrequests = Friendrequest.all
  end
end
