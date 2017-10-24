class BlocklistsController < ApplicationController
  def index
  end

  def create
    puts params[:iduserblock]

    begin
      blocklist = Blocklist.new(user_id: current_user.id, userblock_id: params[:iduserblock])
      blocklist.save()
      render json: {
        alert: "success"
      }
    rescue
      render json: {
        alert: "fail"
      }
    end
  end
end
