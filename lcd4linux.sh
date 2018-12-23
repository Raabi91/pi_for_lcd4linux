url="http://192.168.102.11/lcd4linux"


while true
do

if curl --output /dev/null --silent --head --fail "$url"; then
  echo "URL exists: $url"
else
  sudo shutdown -h now
fi

sleep 0.5
done
