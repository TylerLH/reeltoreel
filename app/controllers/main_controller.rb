class MainController < ApplicationController
  def index
    @subscribe = Subscribe.new
  end
end
