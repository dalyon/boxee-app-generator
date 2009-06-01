<?php
$fp = fopen($_SERVER["SCRIPT_FILENAME"], "r");
$etag = md5(serialize(fstat($fp)));
fclose($fp);
header('Etag: '.$etag);
header ("content-type: application/xml"); 
?>
<apps>
	<app>
		<id>com.repoid.appid</id>
		<name>App Name</name>
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
