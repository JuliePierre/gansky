class UserApplicationsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @user_application = UserApplication.new
  end

  def create
  end
end
