Hello There!

Thank you for providing me with the opportunity to complete the DevOps technical challenge.
According to the requirements I had to write a script that can download,store and delete data copies that are more than three (3) days old

To complete this task , I created a bash script that was able to download the csv file from the covid-19 owid repo and have the ability to create a new time stamped directory to store the file. It also remove find and remove the directory and files that are older than 3 days from the current time. Furthermore I created a dockerfile that uses ubuntu as base image and copies this script inside containers directory and execute it. 
To check this script clone the directory ,build the docker image and run the container by specifying the path to a local directory where you want to store the downloaded data files.


Thanks!
