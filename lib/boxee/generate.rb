module FACollective
  module Boxee
    class Generate
      
      def initialize(options)
        @options      = options
        @project_dir  = File.join(Dir.pwd, @options.name)
      end
      
      def self.scaffold(options)
        boxee = new(options)
        boxee.create_project_dir
        boxee.create_repository
        boxee.create_index_xml
        boxee.create_index_php
        boxee.descriptor
      end

      
      def create_project_dir
        FileUtils.mkdir_p(File.join(@project_dir, "download/com.repoid.#{@options.name}"))
      end
      
      def create_repository
        File.open(File.join(@project_dir, 'repository.xml'), "w+") do |f|
          f.puts <<-REPO
<repository>
	<id>com.repoid</id>
	<url>http://www.yourwebsite.com/repository</url>
	<name>A Repository</name>
	<thumb>http://www.yourwebsite.com/thumb.png</thumb>
	<description>A Repository</description>
</repository>


          REPO
        end
      end
      
      
      def create_index_xml
        File.open(File.join(@project_dir, 'index.xml'), "w+") do |f|
          f.puts <<-INDEX
<apps>
	<app>
		<id>com.repoid.#{@options.name}</id>
		<name>#{@options.name}</name>
		<version>1.0</version>
		<description>App Description</description>
		<thumb>http://www.yourwebsite.com/thumb.png</thumb>

		<repositoryid>com.repoid</repositoryid>
		<repository>http://www.yourwebsite.com/repository</repository>
		<media>video</media>
		<copyright>Your Name</copyright>
		<email>support@yourwebsite.com</email>
		<type>rss</type>
		<platform>all</platform>
		<minversion>0.9.9</minversion>
		<url>rss://www.yourwebsite.com/rss.xml</url>
	</app>
</apps>

          INDEX
        end
      end
      
      
      def create_index_php
        File.open(File.join(@project_dir, 'index.php'), "w+") do |f|
          f.puts <<-INDEX
<?php
$fp = fopen($_SERVER["SCRIPT_FILENAME"], "r");
$etag = md5(serialize(fstat($fp)));
fclose($fp);
header('Etag: '.$etag);
header ("content-type: application/xml"); 
?>
<apps>
	<app>
		<id>com.repoid.#{@options.name}</id>
		<name>#{@options.name}</name>
		<version>1.0</version>
		<description>App Description</description>
		<thumb>http://www.yourwebsite.com/thumb.png</thumb>

		<repositoryid>com.repoid</repositoryid>
		<repository>http://www.yourwebsite.com/repository</repository>
		<media>video</media>
		<copyright>Your Name</copyright>
		<email>support@yourwebsite.com</email>
		<type>rss</type>
		<platform>all</platform>
		<minversion>0.9.9</minversion>
		<url>rss://www.yourwebsite.com/rss.xml</url>
	</app>
</apps>


          INDEX
        end
      end
      
      
      def descriptor
        File.open(File.join(@project_dir, "download/com.repoid.#{@options.name}/descriptor.xml"), "w+") do |f|
          f.puts <<-DESC
<app>
	<id>#{@options.name}</id>
	<name>#{@options.name}</name>
	<version>1.0</version>
	<description>App Description</description>
	<thumb>http://www.yourwebsite.com/thumb.png</thumb>

	<media>video</media>
	<copyright>Your Name</copyright>
	<email>support@yourwebsite.com</email>
	<type>rss</type>
	<platform>all</platform>
	<minversion>0.9.9</minversion>
	<url>rss://www.yourwebsite.com/rss.xml</url>
</app>


          DESC
        end
      end
      
    end
  end
end