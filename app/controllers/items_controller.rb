class ItemsController < ApplicationController
  def new
    @item = Item.new(weekday_id: params[:weekday_id])
  end
  
  def create
    @item = Item.create(item_params)
  end
  
  private
    def item_params
      params.require(:item).permit(:name, :price, :weekday_id)
    end
end
