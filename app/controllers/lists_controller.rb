class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect
  end

  def show
    @list = List.find_by(id: params[:id])
    @item = @list.items.build
  end

  def create
    # raise params.inspect
    @list = List.new(list_params)
    # @list.name = params[:list][:name]
    @list.save

    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
