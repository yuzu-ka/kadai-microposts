class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def rewuire_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  def counts(user)
    @count_microposts = user.microposts.count
  end
end
