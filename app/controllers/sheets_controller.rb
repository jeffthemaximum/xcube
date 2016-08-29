class SheetsController < ApplicationController
  def create
    if params["sheet"]["name"]
      sheet_name = params["sheet"]["name"]
      @sheet = Sheet.find_or_create_by(name: sheet_name)
      @sheet.update(status: 'in progress')
      CallScraperWorker.perform_async(@sheet, sheet_name, @sheet.id)
      redirect_to @sheet
    end
  end

  def new
    @sheet = Sheet.new
  end

  def callback
    sheet_id = params[:sheet_id].to_i
    status = params[:status]
    @sheet = Sheet.find(sheet_id)
    @sheet.update(status: status)
    render json: { status: status }
  end

  def show
    @sheet = Sheet.find(params[:id])
  end

  private
    def sheet_params
      params.permit(params["sheet"])
    end
end
