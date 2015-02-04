namespace :report do

  desc "Weekly sending report to users"
  task :weekly => :environment do |t, args|

    # code your here
    send_report = WeeklyReportJob.new
    send_report.perform('xxx')

    p "Send report weekly"
  end
end
