port=80
image=hussain14/flask-app
echo "Starting Container on port $port"
docker pull $image
docker run -dp 80:3000 $image && echo "Successfully started container"