class SessionsController < ActionController::Base
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to '/'
  end
end
