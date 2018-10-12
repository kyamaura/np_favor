require 'clockwork'
require 'active_support/time'
require './config/boot'


module Clockwork
  handler do |job|
    case job
    when 'frequent.job'
      `rails runner -e development 'require "./lib/tasks/batch"; Tasks::Batch.frequent'`
    when 'midnight.job'
      `rails runner -e development 'require "./lib/tasks/batch"; Tasks::Batch.execute'`
    end
  end

  every(1.minute, 'frequent.job')
  every(1.day, 'midnight.job', :at => '04:00')

end
