# Start container configuration
sudo service mysql stop
docker-compose start

# Show docker db conatianer IP
echo "Docker database IP:" 
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' helpdesk-53_db_1
