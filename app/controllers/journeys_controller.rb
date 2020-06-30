class JourneysController < ApplicationController
  def index
    @journeys = policy_scope(Journey)
  end

  def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(params[:journey])
    @journey.save
    redirect_to action: "index"
  end
end
