image=hussainalnafi/flask-app

echo "Stopping and Deleting Container based on image $image"
docker rm -f $(docker ps -aqf ancestor=$image)
echo "Deleted Container. Now Removing Image $image"
docker rmi $image
echo "Done Removing Image"
