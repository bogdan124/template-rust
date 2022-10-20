echo "Running actix on port 8080"
##run a actix on port 8080 and acces it using shell
sudo docker run -it --network=host --rm -p 8080:8080 actix 