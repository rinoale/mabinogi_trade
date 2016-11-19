class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_emailid(params[:emailid])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      debugger
      flash.now[:danger] = 'invalid email/password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
