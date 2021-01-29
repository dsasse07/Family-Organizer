class ListItemsController < ApplicationController
    before_action :set_list_item, only: [:update, :destroy,:complete]

    def create
        @list_item = ListItem.create(list_item_params(:content, :list_id))
        redirect_to list_path(@list_item.list.family, @list_item.list)
    end

    def destroy
        list = @list_item.list
        @list_item.destroy
        redirect_to list_path(list.family, list)
    end

    def complete
        # byebug
        status = @list_item.complete
        status = !status
        @list_item.update(complete: status)
        redirect_to list_path(@list_item.list.family, @list_item.list)
    end

    private

    def list_item_params(*args)
        params.require(:list_item).permit(*args)
    end

    def set_list_item
        @list_item = ListItem.find(params[:id])
    end

end
