# zw-project2-bash
## Welcome to Zhonglin's project #2 bash command line tool development.
In project 2, I created a command line tool to help us pull the data of top 100 global brands with branditory - 2022. The data is downloaded from Kaggle https://www.kaggle.com/datasets/gauravarora1091/top-100-global-brands-by-brandirectory2022

### Data looks like
<img width="942" alt="WX20221009-171002@2x" src="https://user-images.githubusercontent.com/112585430/194779637-e1eca592-811e-4f2d-b9f0-e749d2989043.png">
* : I developed three commands that allow users to access to each brand information, sort by the brand information, and use a neat print table to present the information, and these commands can be used via 

`docker run -it b20ff7e1f60f /bin/bash sort.sh brandirectory-ranking-global-2022.csv`

`docker run -it b20ff7e1f60f /bin/bash read_n.sh brandirectory-ranking-global-2022.csv`

`docker run -it b20ff7e1f60f /bin/bash neat.sh brandirectory-ranking-global-2022.csv` 

to pull the data from the repository.

### Run in AWS Cloud9

`aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 766481746749.dkr.ecr.us-east-1.amazonaws.com`

<img width="1194" alt="截屏2022-10-09 下午6 06 05" src="https://user-images.githubusercontent.com/112585430/194781645-4dec0bca-74c2-4af5-bbba-d7e64d464a6c.png">

`docker tag 766481746749.dkr.ecr.us-east-1.amazonaws.com/zw277/project2 766481746749.dkr.ecr.us-east-1.amazonaws.com/p2zw277:latest`

<img width="1205" alt="截屏2022-10-09 下午6 03 50" src="https://user-images.githubusercontent.com/112585430/194781562-cbdfbfb9-0a44-459c-9ba8-75dff27a9dcf.png">

`docker push 766481746749.dkr.ecr.us-east-1.amazonaws.com/p2zw277:latest`

<img width="1194" alt="截屏2022-10-09 下午6 07 14" src="https://user-images.githubusercontent.com/112585430/194781692-623e6a17-4558-4d01-b4b6-e3e92fb4e67a.png">

Now we can use our command line tool in the Cloud9:
### First make sure that we have login to dockerhub and aws:

`docker login -u zw277 -p $DOCKER_HUB` 

<img width="846" alt="截屏2022-10-09 下午6 39 23" src="https://user-images.githubusercontent.com/112585430/194782765-7d68635c-ef5f-4db8-9711-0ca94a60298b.png">

### Then type the following code in the AWS repo and it should give the pulling data.

`docker run -it 766481746749.dkr.ecr.us-east-1.amazonaws.com/p2zw277:latest /bin/bash read_n.sh brandirectory-ranking-global-2022.csv`

`docker run -it 766481746749.dkr.ecr.us-east-1.amazonaws.com/p2zw277:latest /bin/bash sort.sh brandirectory-ranking-global-2022.csv`

`docker run -it 766481746749.dkr.ecr.us-east-1.amazonaws.com/p2zw277:latest /bin/bash neat.sh brandirectory-ranking-global-2022.csv`

### To obtain three ways of accessing the top 100 global brands with branditory data in 2022.

