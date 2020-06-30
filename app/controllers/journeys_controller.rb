class JourneysController < ApplicationController
  def index
    @journeys = policy_scope(Journey)
  end
end
