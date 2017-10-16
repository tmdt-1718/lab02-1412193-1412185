class ListaccquatancesController < ApplicationController
  before_action :set_title, only: [:show]
  layout 'applicationPage'
  def index
    @listaccquatances = User.where.not(id: current_user.id)
  end

  # thuc hien chuc nang insert tao friend request
  def show
    @titles = Friendrequest.all
    @title = Friendrequest.new(user_id: @user.id, usersend_id: current_user.id)
    respond_to do |format|
      if @title.save
        format.html { render :index, notice: 'Title was successfully created.' }
        format.json { render :show, status: :created}
        format.js
      else
        format.html { render :new }
        format.json { render json: @title.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @user = User.find(params[:id])
    end

end
