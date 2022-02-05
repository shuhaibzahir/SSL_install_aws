#!/bin/bash
sudo apt install certbot python3-certbot-nginx
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'

echo "Enter the Domain Name: "  
read domain

sudo certbot --nginx -d  $domain
sudo certbot renew --dry-run
