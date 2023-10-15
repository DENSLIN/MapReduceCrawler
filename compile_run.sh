javac -cp .:./MRcrawler:$(/home/denslin/hadoop-3.3.6/bin/hadoop classpath) MRcrawler.java
mv *.class MRcrawler
jar -cf MRcrawler.jar -C MRcrawler .
hadoop jar MRcrawler.jar MRcrawler base_urls.txt 3
