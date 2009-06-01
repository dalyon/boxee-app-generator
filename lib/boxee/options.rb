module FACollective
  module Boxee
  
    class Options
      
      # Parse
      #
      # - Description
      #
      # Receives the arguments from the command-line to start parsing.
      #
      def self.parse!(args)
        
        options = OpenStruct.new
        options.name = args.first

        opts = OptionParser.new do |opts|
          opts.banner = "Boxee.tv App Generator"
          opts.separator ""
          opts.separator "Generates an application scaffold for building boxee.tv apps."
          opts.separator ""
          opts.separator "Usage: boxee app_name --type rss"
          opts.separator "There are currently two types: rss or skin (--type skin || --type rss)"
          opts.separator ""
          
          opts.on('--type TYPE', 'What type of Boxee application do you want to have generated?') do |type|
            options.app_type = type
          end

          opts.on_tail("-h", "--help", "Show help") do
            puts opts
            exit(0)
          end

          opts.on_tail("-v", "--version", "Show Version") do
            puts "Bitly is currently at Version #{FACollective::Boxee::Version}"
            exit(0)
          end

        end
        
        opts.parse!(args)
        options
      end
      
      
    end
    
  end
end