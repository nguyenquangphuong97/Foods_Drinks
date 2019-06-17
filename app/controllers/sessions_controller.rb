class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      login_redirect user
    else
      flash.now[:danger] = t "invalid_email_password"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

  private

  def remember_check checked, user
    checked == Settings.checked ? remember(user) : forget(user)
  end

  def login_redirect user
    log_in user
    remember_check params[:session][:remember_me], user
    redirect_back_or user
  end
end
