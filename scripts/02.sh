sudo touch /var/log/update_script.log
log=$(sudo apt-get update && sudo apt-get upgrade)
echo "$log" | sudo tee /var/log/update_script.log

echo "0 4 * * 1 sh ~/initto/scripts/02.sh" | crontab -
