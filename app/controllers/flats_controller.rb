class FlatsController < ApplicationController
  attr_reader :formated_date
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @flats = Flat.all
    @carte_cergy = Medium.all.first
  end

  def show
    @flat = Flat.friendly.find(params[:id])
  end
end
