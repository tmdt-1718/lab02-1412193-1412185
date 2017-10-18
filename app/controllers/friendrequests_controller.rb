class FriendrequestsController < ApplicationController
  layout 'applicationPage'
  # before_action :set_friendrequest, only: [:show, :edit, :update, :destroy]
  # before_action :set_title, only: [:show]


  # GET /friendrequests
  # GET /friendrequests.json
  def index
    x = User.joins("LEFT JOIN friendrequests on users.id = friendrequests.usersend_id").where.not(id: current_user.id)
    y = User.joins("Inner JOIN friendrequests on users.id = friendrequests.usersend_id").where(friendrequests: {user_id: current_user.id})
    z = User.joins("Inner JOIN friendrequests on users.id = friendrequests.user_id").where(friendrequests: {usersend_id: current_user.id})
    @listaccquatances = x - y - z

    @friendrequests = Friendrequest.where(user_id: current_user.id)

    @friendsentaccpect = Friendrequest.where(usersend_id: current_user.id)

    @friendrequest = Friendrequest.new
  end

  def refresh_part
    x = User.joins("LEFT JOIN friendrequests on users.id = friendrequests.usersend_id").where.not(id: current_user.id)
    y = User.joins("Inner JOIN friendrequests on users.id = friendrequests.usersend_id").where(friendrequests: {user_id: current_user.id})
    z = User.joins("Inner JOIN friendrequests on users.id = friendrequests.user_id").where(friendrequests: {usersend_id: current_user.id})
    @listaccquatances = x - y - z

    @friendrequests = Friendrequest.where(user_id: current_user.id)

    @friendsentaccpect = Friendrequest.where(usersend_id: current_user.id)

    @friendrequest = Friendrequest.new

    respond_to do |format|

      format.html { render "friendrequests/index" }
      format.js
    end
  end


  # GET /friendrequests/1
  # GET /friendrequests/1.json
  def show
  end

  # GET /friendrequests/new
  def new
    @friendrequest = Friendrequest.new
  end

  # GET /friendrequests/1/edit
  def edit
  end

  # POST /friendrequests
  # POST /friendrequests.json
  def create
     @friendrequests = Friendrequest.all
     @friendrequest = Friendrequest.new(friendrequest_params)

     respond_to do |format|
       if @friendrequest.save
         format.html { redirect_to action: "index", notice: 'Friendrequest was successfully created.' }
         format.js
       else
         format.html { render :new }
         format.json { render json: @friendrequest.errors, status: :unprocessable_entity }
         format.js
       end
     end
  end

  # PATCH/PUT /friendrequests/1
  # PATCH/PUT /friendrequests/1.json
  def update
    respond_to do |format|
      if @friendrequest.update(friendrequest_params)
        format.html { redirect_to @friendrequest, notice: 'Friendrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendrequest }
      else
        format.html { render :edit }
        format.json { render json: @friendrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendrequests/1
  # DELETE /friendrequests/1.json
  def destroy
    @friendrequest.destroy
    respond_to do |format|
      format.html { redirect_to friendrequests_url, notice: 'Friendrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendrequest
      @friendrequest = Friendrequest.find(params[:id])
    end

    def set_title
     @user = User.find(params[:id])
    end

     def friendrequest_params
       params.require(:friendrequest).permit(:user_id, :usersend_id)
     end

end
