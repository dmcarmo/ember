class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = policy_scope(Item)
    if params[:query].present?
    @items = Item.global_search(params[:query])
    end
  end

  def show
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment, :content)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
