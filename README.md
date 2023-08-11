# docker-assignment1
****Created a simple Hello World program that I will containerize using Docker ****
**Step 1: Creating the Dockerfile**
From python:latest 
First I will pull an ubuntu image with latest version of python installed in it

RUN apt-get update 
Running this command to update the system packages

WORKDIR /usr/app/src
Choose a working directory

COPY app.py ./ 
To copy the source code

CMD [ "python", "./app.py"] 
Command to run the code

**Step 2: To build the docker image, I will run the below command in cmd**
docker build -t assignment_6 .
**LOGS:**
[+] Building 2.2s (9/9) FINISHED                                                                                                           docker:default
 => [internal] load build definition from Dockerfile                                                                                                 0.1s
 => => transferring dockerfile: 150B                                                                                                                 0.0s 
 => [internal] load .dockerignore                                                                                                                    0.1s 
 => => transferring context: 2B                                                                                                                      0.0s 
 => [internal] load metadata for docker.io/library/python:latest                                                                                     1.1s 
 => [1/4] FROM docker.io/library/python:latest@sha256:bc1d76a8360d77a6ab467a8c48ce40369707c9aa76492df094968ce55cca88ae                               0.0s
 => [internal] load build context                                                                                                                    0.1s 
 => => transferring context: 27B                                                                                                                     0.0s 
 => CACHED [2/4] RUN apt-get update                                                                                                                  0.0s 
 => [3/4] WORKDIR /usr/app/src                                                                                                                       0.2s 
 => [4/4] COPY app.py ./                                                                                                                             0.2s
 => exporting to image                                                                                                                               0.3s
 => => exporting layers                                                                                                                              0.2s 
 => => writing image sha256:61a4ff21bfc82c032ee50f80d76e4b2c8c25bb6d038b66c86eff27928810f622                                                         0.0s
 => => naming to docker.io/library/assignment_6                                                                                                      0.0s 

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

**Step 3: Push the Docker Image to Docker Hub** 
i) Created a new repo in Docker Hub with name "hello_world"

ii. Used the below command to signin to DockerHub 
docker login -u YOUR-USER-NAME

iii) Used the docker tag command to tag my image "assignment_6" 
docker tag assignment_6:latest zahydakhan/hello_world:latest

iv) Used the docker images command to view tagged image 
docker images 

**LOGS:**
REPOSITORY               TAG       IMAGE ID       CREATED             SIZE
assignment_6             latest    61a4ff21bfc8   18 minutes ago      1.03GB
zahydakhan/hello_world   latest    61a4ff21bfc8   18 minutes ago      1.03GB
assignment_4             latest    1c947a205d7b   36 minutes ago      1.03GB
assignment_3             latest    389de594c424   58 minutes ago      1.03GB
assignment_2             latest    d504540cf900   About an hour ago   1.03GB
assignment_1             latest    69cb9f39a4db   About an hour ago   1.03GB

v) Now push the image to Docker Hub 
docker push zahydakhan/hello_world:latest

**LOGS:**
The push refers to repository [docker.io/zahydakhan/hello_world]
5ade67333beb: Pushed
b12cfc12443e: Pushed
0a224378b11d: Mounted from zahydakhan/getting-started
f13cae6d5fe9: Mounted from zahydakhan/getting-started
8729b6a044ba: Mounted from zahydakhan/getting-started
5c0fbc8e3c3d: Mounted from zahydakhan/getting-started
c5f1d4dd95f0: Mounted from zahydakhan/getting-started
6a25221bdf24: Mounted from zahydakhan/getting-started
b578f477cd5d: Mounted from zahydakhan/getting-started
b298f9991a11: Mounted from zahydakhan/getting-started
c94dc8fa3d89: Mounted from zahydakhan/getting-started
latest: digest: sha256:fbc0db3cd6bfed2b99f33cf06ef5a6d7ea87c8cd389c45a4d88ee59ebb679b95 size: 2633

**URL of DockerHub Repo:** https://hub.docker.com/repository/docker/zahydakhan/getting-started/general

Step 4: Created a Github repo 'docker-assignment1'

Step 5: Create READ.md file

Step 6: Push the Codebase to GitHub.
i) To initiate a local git repo 
git init 

ii) Change the local branch to main 
git branch -m master main

iii) To add code to the staging area 
git add . 

iv) To Commit changes to the local repo 
git commit -m "Initial Commit"

**LOGS:**
[main (root-commit) 72d4621] Initial Commit
 2 files changed, 10 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 app.py

 v) To add the remote repo to my local git repo 
 git remote add origin https://github.com/zahydakhan/docker-assignment1.git
 
 vi) To push the code to the remote repo 
 git push -u -f origin main
 
**LOGS:**
$ git push -u -f origin main
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 376 bytes | 376.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/zahydakhan/docker-assignment1.git
 + b57eb87...72d4621 main -> main (forced update)
branch 'main' set up to track 'origin/main'.  
