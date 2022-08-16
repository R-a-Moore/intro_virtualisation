
sudo apt-get install nginx -y

sudo apt-get purge nodejs npm -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y

cd home/vagrant/app/app/

sudo npm install pm2 -g

sudo npm install express

sudo npm start