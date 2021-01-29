class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @family = Family.find_by(id: params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params(:title, :family_id))
    if @list.valid?
      redirect_to list_path(@current_user.family, @list)
    else
      flash[:notice] = @list.errors.full_messages
      redirect_to new_list_path
    end
  end

  def show
    @list_item = ListItem.new
  end

  def destroy
    @list.destroy
    redirect_to lists_path(@current_user.family)
  end

  private

  def list_params(*args)
    params.require(:list).permit(*args)
  end

  def set_list
    @list = List.find_by(id: params[:list_id])
  end
end
