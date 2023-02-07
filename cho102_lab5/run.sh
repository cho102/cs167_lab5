mvn clean package
spark-submit --class edu.ucr.cs.cs167.cho102.Filter target/cho102_lab5-1.0-SNAPSHOT.jar hdfs:///nasa_19950630.22-19950728.12.tsv hdfs:///filter_output 302 2>/dev/null
sleep 3
spark-submit --class edu.ucr.cs.cs167.cho102.Aggregation target/cho102_lab5-1.0-SNAPSHOT.jar hdfs:///nasa_19950630.22-19950728.12.tsv 2>/dev/null
