class ListsController < ApplicationController
  def index
    @lists = List.all
    # raise @lists.inspect
  end
end
