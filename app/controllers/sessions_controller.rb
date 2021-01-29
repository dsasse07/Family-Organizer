class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]


    def new
      redirect_to family_path(@current_user.family) if logged_in?
    end


    def create
      @user = Guardian.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:guardian_id] = @user.id
        redirect_to family_path(@user.family)
      else
        flash[:message] = "Your username or password is incorrect. Please try again"
        redirect_to login_path
      end
    end

    def destroy
      session.delete :guardian_id
      @current_user = nil
      redirect_to login_path
    end

end
