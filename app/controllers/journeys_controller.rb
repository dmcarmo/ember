class JourneysController < ApplicationController

  before_action :set_journey, only: [:show, :edit, :update, :destroy]

  def index
    @journeys = policy_scope(Journey)
    if params[:query].present?
    @journeys = Journey.global_search(params[:query])
    end
  end

  def show
    authorize @journey
  end

  def new
    @journey = Journey.new
    authorize @journey
  end

  def update
  end

  def create
    title = params[:journey][:title]
    user = current_user
    start_date = DateTime.now
    @journey = Journey.new(user: user, title: title, start_date: start_date)
    @journey.save
    authorize @journey
    redirect_to action: "main"
  end

  def main
    @current_journey = policy_scope(Journey).last
    authorize @current_journey
  end

  private

  # def journey_params
  #   params.require(:journey).permit(:title)
  # end

  def set_journey
    @journey = Journey.find(params[:id])
  end
end
