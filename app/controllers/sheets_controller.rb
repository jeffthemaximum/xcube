class SheetsController < ApplicationController
  def create
    binding.pry
    if params["sheet"]["name"]
      sheet_name = params["sheet"]["name"]
      @sheet = Sheet.find_or_create_by(name: sheet_name)
      @sheet.update(status: 'in progress')
      CallScraperWorker.perform_async(@sheet)
  end

  def new
    @sheet = Sheet.new
  end

  private
    def sheet_params
      params.permit(params["sheet"])
    end
end
