class SessionsController < ActionController::Base
  def new
  end

  def create
    if params[:name].nil? || params[:name]
      redirect_to login_path
    else
    session[:name] = params[:name]
    redirect_to root_path
  end
end
end
