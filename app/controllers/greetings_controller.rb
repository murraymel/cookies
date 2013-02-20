class GreetingsController < ApplicationController
  def hello
    @name = cookies[:visitor]
  end

  def introduce
    cookies[:visitor] = params[:person]
    redirect_to '/hi'
  end
end
