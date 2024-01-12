image=hussainalnafi/flask-app

port=80

echo "Starting Container on port $port"
docker pull $image
docker run -dp 80:3000 $image && echo "Successfully started container"
