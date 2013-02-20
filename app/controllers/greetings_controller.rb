class GreetingsController < ApplicationController
  def hello
    @name = cookies[:visitor]
    @color = cookies[:color]
    @size = cookies[:size]
  end

  def introduce
    cookies[:visitor] = params[:person]
    cookies[:color] = params[:color]
    cookies[:size] = params[:size]
    redirect_to '/hi'
  end

  def goodbye
    cookies[:visitor] = nil
    redirect_to '/hi'
  end
end
