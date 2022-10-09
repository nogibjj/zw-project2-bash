# zw-project2-bash
## Welcome to Zhonglin's project #2 bash command line tool development.
In project 2, I created a command line tool to help us pull the data of top 100 global brands with branditory - 2022. The data is downloaded from Kaggle https://www.kaggle.com/datasets/gauravarora1091/top-100-global-brands-by-brandirectory2022

### Data looks like
<img width="942" alt="WX20221009-171002@2x" src="https://user-images.githubusercontent.com/112585430/194779637-e1eca592-811e-4f2d-b9f0-e749d2989043.png">
* : I developed three commands that allow users to access to each brand information, sort by the brand information, and use a neat print table to present the information, and these commands can be used via `docker run -it b20ff7e1f60f /bin/bash sort.sh brandirectory-ranking-global-2022.csv`, `docker run -it b20ff7e1f60f /bin/bash read_n.sh brandirectory-ranking-global-2022.csv`, and `docker run -it b20ff7e1f60f /bin/bash neat.sh brandirectory-ranking-global-2022.csv` to pull the data from the repository.
