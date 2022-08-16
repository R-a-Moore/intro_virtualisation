   sudo apt-get update -y
  
    sudo apt-get upgrade -y
  
    sudo apt-get install nginx -y
  
    sudo apt-get purge nodejs npm -y
  
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
  
    sudo apt-get install nodejs -y
  
    sudo npm install pm2 -g

    sudo cp -f app/rev_prox_file /etc/nginx/sites-available/default

    sudo systemctl restart nginx
  
    sudo apt-get update -y
  
    sudo apt-get upgrade -y