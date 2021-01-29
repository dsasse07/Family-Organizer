class ChildrenController < ApplicationController
  before_action :set_child, only: [:edit, :update, :destroy]
  def new
    @child = Child.new
  end

  def create
    @child = Child.create(child_params(:first_name, :last_name, :birth_date, :family_id, :profile_pic))
    if @child.valid?
      redirect_to family_members_path
    else
      flash[:messages] = @child.errors
      redirect_to new_child_path
    end
  end

  def edit

  end

  def update
    @child.update(child_params(:first_name, :last_name, :birth_date, :family_id, :profile_pic))
    if @child.valid?
      redirect_to family_members_path
    else
      flash[:messages] = @child.errors
      redirect_to edit_child_path
    end
  end

  def destroy
    @child.destroy
    redirect_to family_members_path
  end

  private

  def child_params(*args)
    params.require(:child).permit(*args)
  end

  def set_child
    @child = Child.find(params[:child_id])
  end
end
