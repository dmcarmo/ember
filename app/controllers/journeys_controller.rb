class JourneysController < ApplicationController

  before_action :set_journey, only: [:show, :edit, :update, :destroy]

  def index
    @journeys = policy_scope(Journey)
  end

  def show
    authorize @journey
  end

  def new
    @journey = Journey.new
    authorize @journey
  end

  def create
    @journey = Journey.new(params[:journey])
    @journey.save
    authorize @journey
    redirect_to action: "index"
  end

  private

  # def journey_params
  #   params.require(:journey).permit(:title)
  # end

  def set_journey
    @journey = Journey.find(params[:id])
  end
end
