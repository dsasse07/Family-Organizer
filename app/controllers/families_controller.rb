class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :settings, :members]
  def show
    # byebug
  end

  def settings
  end

  def members
    
  end

  private

  def set_family
    @family = Family.find(current_user.family.id)
  end

end
