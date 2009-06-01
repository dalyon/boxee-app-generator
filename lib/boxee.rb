module FACollective
  module Boxee
    Version = "0.1.0"
  end
end

# Required Gems
%w[fileutils].each { |library| require library }


# Gem specific Requires
require File.dirname(__FILE__) + "/boxee/options.rb"
require File.dirname(__FILE__) + "/boxee/generate.rb"
require File.dirname(__FILE__) + "/boxee/templates/repository.xml"
require File.dirname(__FILE__) + "/boxee/templates/index.xml"
require File.dirname(__FILE__) + "/boxee/templates/index.php"
require File.dirname(__FILE__) + "/boxee/templates/download/com.repoid.appid/descriptor.xml"
