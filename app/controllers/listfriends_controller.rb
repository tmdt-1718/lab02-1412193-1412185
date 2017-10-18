class ListfriendsController < ApplicationController
  layout 'applicationPage'
  def index
    @listfriendcurrent = current_user.friendlist.desfriendlists;
  end
end
