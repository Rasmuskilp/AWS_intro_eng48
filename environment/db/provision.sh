sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update -y
sudo apt-get upgrade -y

# sudo apt-get install mongodb-org=3.2.18 -y
wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -
# add mongodb repo details so apt knows where to download the packages. Also creates a list file for Mongodb.
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

sudo rm /etc/mongod.conf
sudo ln -s /home/ubuntu/deployment-code/environment/db/mongod.conf /etc/mongod.conf
sudo systemctl enable mongod

sudo systemctl stop mongod
sudo systemctl start mongod
#sudo systemctl enable mongod
