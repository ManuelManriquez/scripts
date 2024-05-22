#Install nginx
sudo dnf install nginx

#Enable nginx
sudo systemctl enable nginx

#Start nginx
sudo systemctl start nginx

#Open firewall for nginx
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https

