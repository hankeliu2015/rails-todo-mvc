class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to list_path(@list)
    # raise params.inspect
    else
      render "lists/show"
    end
  end

  #patch - /lists/:list_id/items/:id

  def update
    # binding.pry
     # raise params.inspect
    @item = Item.find(params[:id])
    @list = List.find(params[:list_id])
    @item.update(item_params)

    redirect_to list_path(@item.list)
  end

  private

  def item_params
    params.require(:item).permit(:description, :status)
  end
end
