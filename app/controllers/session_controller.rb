class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])#.downcase not working?
    if user.nil?
      flash.now[:danger] = "Invalid email"
      render 'new'
    elsif user && !!user.authenticate(params[:session][:password])
      # login user
      log_in user
      if params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      end
      redirect_to user # user_url(user)
    else
      flash.now[:danger] = "Invalid password"
      render 'new'
    end
  end

  def logout
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
