class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  include SessionsHelper

  private
  def logged_in_user
    unless logged_in?
      respond_to do |format|
        format.html do
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
        format.js
      end
    end
  end
end
