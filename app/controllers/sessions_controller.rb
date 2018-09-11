class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: (params_session :email)
    if user && user.authenticate(params_session(:password))
      log_in user
      redirect_to user
    else
      flash[:danger] = t "controllers.session.m_unsuccess"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
