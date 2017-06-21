class UserApplicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @flat = Flat.find(params[:flat_id])
    @user_application = UserApplication.new
  end

  def create
    @user_application = UserApplication.new(user_application_params)
    @flat = Flat.find(params[:flat_id])
    if params[:user_application]["warrant"][1].nil? || params[:user_application]["visit_needed"][1].nil?
      respond_to do |format|
        format.js  # <-- will render `app/views/user_applications/create.js.erb`
        format.html { render :new }
      end
    else
      @user_application.warrant = ( params[:user_application]["warrant"][1] == "true" )
      @user_application.visit_needed = ( params[:user_application]["visit_needed"][1] == "true" )
      @user_application.flat = @flat
      if @user_application.save
        redirect_to flat_path(@flat)
      else
        render :new
      end
    end
  end

  private

  def user_application_params
    params.require(:user_application).permit(:applicant_name, :applicant_email, :applicant_phone_number, :applicant_infos, :warrant, :visit_needed)
  end
end
