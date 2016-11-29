namespace :job do
  desc "TODO"
  task mailday: :environment do
    DailyWorker.perform_async DailyWorker::MAIL_DAY
  end
end
