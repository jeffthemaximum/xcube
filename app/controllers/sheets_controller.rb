class SheetsController < ApplicationController
  def create
    sheet_name = params["sheet"]["name"]
    CallScraperWorker.perform_async(sheet_name)
  end

  def new
    @sheet = Sheet.new
  end

  private
    def sheet_params
      params.permit(params["sheet"])
    end
end
