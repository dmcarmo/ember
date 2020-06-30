class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]
#   before_action :correct_user, only: [:edit, :destroy]

  def index
    @items = policy_scope(Item)
  end

  def show
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:name, :description,)
  end

#   def correct_user
#     redirect_to item_path, notice: "Not authorized" if @item.user != current_user
#   end

  def set_item
    @item = Item.find(params[:id])
  end
end
