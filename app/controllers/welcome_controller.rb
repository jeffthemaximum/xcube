class WelcomeController < ApplicationController
  def index
    @sheet = Sheet.new
  end
end
