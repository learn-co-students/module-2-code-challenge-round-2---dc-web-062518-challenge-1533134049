class AppearancesController < ApplicationController

  # def index
  #   @guests = Guest.all
  # end
  #
  # def show
  #   @guest = Guest.find(params[:id])
  # end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appear_params)

    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      render :new
    end
  end

  private

  def appear_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
