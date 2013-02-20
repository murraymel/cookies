class GreetingsController < ApplicationController
  def hello
    @name = session[:visitor]
    @color = session[:color]
    @size = session[:size]
  end

  def introduce
    session[:visitor] = params[:person]
    session[:color] = params[:color]
    session[:size] = params[:size]
    redirect_to '/hi'
  end

  def goodbye
    reset_session
    redirect_to '/hi'
  end
end
