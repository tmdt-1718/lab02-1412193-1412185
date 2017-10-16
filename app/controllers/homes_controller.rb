class HomesController < ApplicationController
  layout 'applicationPage'
  before_action :authenticate_user!
  def index
  end
end
