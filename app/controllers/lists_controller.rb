class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect
  end

  def show
    @list = List.find_by(id: params[:id])
    # @item = @list.items.build
    @item = Item.new
  end

  def create
    # raise params.inspect
    @list = List.new(list_params)
    # @list.name = params[:list][:name]
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
