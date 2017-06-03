class SessionsController < ApplicationController
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    owner = Owner.find_by(email: params[:session][:email].downcase)
    respond_to do |format|
      if owner && owner.authenticate(params[:session][:password])
        log_in(owner)
        flash[:info] = 'Sign in successfully'
        format.html { redirect_to blogs_path }
        format.js { render js: "window.location='/blogs'" }
      else
        byebug
        flash.now[:danger] = 'Invalid email / password combination'
        format.html { render 'new' }
        format.js { render json: { errors: ['Invalid email / password combination'] }, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
