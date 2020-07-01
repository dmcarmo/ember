class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = policy_scope(Item)
  end

  def show
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
