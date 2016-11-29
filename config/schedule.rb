# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
env :PATH, ENV["PATH"]
# Learn more: http://github.com/javan/whenever
set :environment, "development"
#để kiểm soát lỗi gửi mail hệ thống
set :output, "/home/framgia/log.log" #đường dẫn tuyệt đối

every "44 8 * * *" do
  rake "job:mailday"
end
