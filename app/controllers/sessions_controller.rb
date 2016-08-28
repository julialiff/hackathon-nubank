class SessionsController < ApplicationController
  def new
  end
  def createi
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      # Create an error message.
      flash.now[:error] = 'Email ou senha incorretos.'
      render 'newi'
    end
  end
  def createc
    user = Consultant.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_inc user
      redirect_to root_path
    else
      # Create an error message.
      flash.now[:error] = 'Email ou senha incorretos.'
      render 'newi'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
   private

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
