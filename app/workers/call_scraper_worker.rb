class CallScraperWorker
  include Sidekiq::Worker

  def perform(sheet_name)
    url = Rails.application.secrets.helloworld_xcube_url
    HTTParty.post url , body: { s: sheet_name }, timeout: 300
  end
end