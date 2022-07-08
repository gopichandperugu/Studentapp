# Studentapp
#######################################################################################################################################################
######################################################################################################################################################
cp -i target/studentapp*.war studentapp.war
#sudo docker pull satish736/mysql
#sudo docker login --username=satish736 --password=3a51cd5d-3780-455b-ab23-0a7b7bec039c https://hub.docker.com
sudo docker build -t satish736/mysql:1.0 .
sudo docker push satish736/mysql:1.0
#sudo docker pull satish736/tomcat-student
sudo docker build -f Dockerfile-tomcat -t satish736/tomcat-student:1.0 .
sudo docker push satish736/tomcat-student:1.0
#########################################################################################################################################################
##########################################################################################################################################################
