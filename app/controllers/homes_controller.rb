class HomesController < ApplicationController
  layout 'applicationPage'
  before_action :authenticate_user!
  def index
    @listfriendcurrent = current_user.friendlist.desfriendlists;
  end
end
