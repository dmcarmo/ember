class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = policy_scope(Item)
  end

  def show
    authorize @item
  end

  def new
    @journey = Journey.find(params[:journey_id])
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @journey = Journey.find(params[:journey_id])
    @item.journey = @journey
    @item.item_type = "Notes"
    @item.save
    authorize @item
    redirect_to main_journeys_path, notice: "Note saved"
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment, :content)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
