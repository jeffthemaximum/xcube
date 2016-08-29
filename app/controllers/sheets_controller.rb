class SheetsController < ApplicationController
  def create
    url = Rails.application.secrets.helloworld_xcube_url
    sheet_name = params["sheet"]["name"]
    HTTParty.post url , body: { s: sheet_name }, timeout: 300
  end

  def new
    @sheet = Sheet.new
  end

  private
    def sheet_params
      params.permit(params["sheet"])
    end
end
