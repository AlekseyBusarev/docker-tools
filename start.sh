# Start container configuration
sudo service mysql stop
sudo service apache2 stop
docker-compose start

# Show docker db conatianer IP
echo "Docker database IP:" 
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cscart_php72_db_1
