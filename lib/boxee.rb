module FACollective
  module Boxee
    Version = "0.1.0"
  end
end

# Required Gems
%w[fileutils optparse ostruct].each { |library| require library }


# Gem specific Requires
require File.dirname(__FILE__) + "/boxee/options.rb"
require File.dirname(__FILE__) + "/boxee/generate.rb"

