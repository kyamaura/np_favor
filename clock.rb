require 'clockwork'
require 'active_support/time'
require './config/boot'


module Clockwork
  handler do |job|
    `rails runner -e development 'require "./lib/tasks/batch"; Tasks::Batch.execute'`
  end

  every(10.seconds, 'frequent.job')

end
