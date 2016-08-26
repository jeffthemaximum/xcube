class SheetsController < ApplicationController
  def create
    binding.pry
  end

  def new
    @sheet = Sheet.new
  end
end
