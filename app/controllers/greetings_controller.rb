class GreetingsController < ApplicationController
  def hello
    @name = cookies[:visitor]
  end

  def introduce
    cookies[:visitor] = 'Somebody'
    redirect_to '/hi'
  end
end
