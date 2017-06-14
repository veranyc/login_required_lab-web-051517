class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to "/login"
    else
      redirect_to '/sessions/index'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end


end
