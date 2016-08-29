class CallScraperWorker
  include Sidekiq::Worker

  def perform(sheet_name, sheet_id)
    url = Rails.application.secrets.helloworld_xcube_url
    HTTParty.post url , body: { s: sheet_name, id: sheet_id }, timeout: 300
  end
end