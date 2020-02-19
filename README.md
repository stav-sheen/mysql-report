# mysql-report

 Setup
=============

1.Clone repo
2.Copy ./dbsetup/_data to /tmp/_data
3.Build image in ./dbsetup 
4.Run db container using command:   
`docker container run -dit -p 3306:3306 -v /tmp/_data:/var/lib/mysql --name apollo <image_name>`
5.In ./webapp/query.sh change the -h flag value to your host ip 
6.Build image in ./webapp 
7.Run app container using command:
`docker container run -dit -p 9980:80 --name plutus <image_name>`

##QUESTIONS:
- GIT would be highly usefull to record and manage different versions since one of the main components of this repo is the mysqldb which
  holds data that can altered. Also there are some parameters as mentioned above (step 3) that also are changed based on the user's needs. 
  Also, the query that runs on the db can be altered depends on the data that needs to be displayed. 
  I personally used GIT to develop this project to help me record the many changes i made to either files or data as one. 
- JENKINS - For this specific instance i would build a pipeline that would be triggered(automatically/manually) whenever the data in the 
  mysql db is altered so it would build the app server image automatically and run it. 
- Docker Repo - There are two docker images that are built from this project. whenever each of them is built it collects data that could be 
  altered beforehand. Therefore, it would be highly recommended to record the images themselves in a repo. Especially the webserver image 
  since most of its data is in the build process


