# Lab 5

## Student information

* Full name: Cindy Ho
* E-mail: cho102@ucr.edu
* UCR NetID: cho102
* Student ID: 862151318

## Answers

* (Q1) Do you think it will use your local cluster? Why or why not?
</br>No, it will not.
* (Q2) Does the application use the cluster that you started? How did you find out?
</br>Yes. When I refresh the master web interface, it shows a completed application for CS167-Lab5.
* (Q3) What is the Spark master printed on the standard output on IntelliJ IDEA?
</br>Using Spark master 'local[*]'
* (Q4) What is the Spark master printed on the standard output on the terminal?
</br>Using Spark master 'spark://127.0.0.1:7077'
* (Q5) For the previous command that prints the number of matching lines, list all the processed input splits.
</br>hdfs://localhost:9000/nasa_19950801.tsv:0+1169610
</br>hdfs://localhost:9000/nasa_19950801.tsv:1169610+1169610
* (Q6) For the previous command that counts the lines and prints the output, how many splits were generated?
</br>Four splits were generated:
</br>hdfs://localhost:9000/nasa_19950801.tsv:0+1169610
</br>hdfs://localhost:9000/nasa_19950801.tsv:1169610+1169610
</br>hdfs://localhost:9000/nasa_19950801.tsv:0+1169610
</br>hdfs://localhost:9000/nasa_19950801.tsv:1169610+1169610
* (Q7) Compare this number to the one you got earlier.
</br> There is double the amount of splits from earlier.
* (Q8) Explain why we get these numbers.
</br>We get this number because the task is separated into two different stages which is separated by a communication barrier.
* (Q9) What can you do to the current code to ensure that the file is read only once?
</br> Add the line logFile.cache() to save it to memory.
