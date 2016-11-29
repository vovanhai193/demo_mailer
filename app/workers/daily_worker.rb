class DailyWorker
  include Sidekiq::Worker

  MAIL_DAY = 1

  def perform action
    case action
    when MAIL_DAY
        send_email
    end
  end

  private
  def send_email
    ExampleMailer.happy_new_year.deliver
  end
end
