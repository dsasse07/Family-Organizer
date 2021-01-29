class GuardiansController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :set_family, only: [:add_to_family, :save_to_family, :edit, :update, :destroy]
  def new
    @new_guardian = Guardian.new
  end

  def create
    @family = Family.create(guardian_params(:image))
    @user = Guardian.create(guardian_params(:first_name, :last_name, :username, :password, :password_confirmation, :email, :role, :profile_pic).merge(family: @family))
    if @user.valid?
      session[:guardian_id] = @user.id
      redirect_to family_path(@user.family)
    else
      flash[:messages] = @user.errors
      redirect_to new_guardian_path
    end
  end

  def add_to_family
    @new_guardian = Guardian.new
  end

  def save_to_family
    @family.update(guardian_params(:image))
    @user = Guardian.create(guardian_params(:first_name, :last_name, :username, :password, :password_confirmation, :email, :role, :profile_pic).merge(family: @family))
    if @user.valid?
      redirect_to family_members_path
    else
      flash[:messages] = @user.errors
      redirect_to add_guardian_path
    end
  end

  def edit
    @new_guardian = @current_user
  end

  def update
    @family.update(guardian_params(:image))
    @current_user.update(guardian_params(:first_name, :last_name, :username, :password, :password_confirmation, :email, :role, :profile_pic).merge(family: @family))
    if @current_user.valid?
      redirect_to family_path(@current_user.family)
    else
      flash[:messages] = @current_user.errors
      redirect_to edit_guardian_path
    end
  end

  def destroy
    # byebug
    @guardian = Guardian.find(params[:delete_id])
    @guardian.destroy
    redirect_to family_members_path(@family)
  end

  private

  def guardian_params(*args)
    params.require(:guardian).permit(*args)
  end

  def family_params(*args)
    params.require(:family).permit(*args)
  end
  
  def set_family
    @family = @current_user.family
  end
end
