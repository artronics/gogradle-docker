docker build . -t gogradle:latest

docker tag gogradle:latest artronics/gogradle:latest
docker tag gogradle:latest artronics/gogradle:1.13.5

docker push artronics/gogradle:1.13.5
docker push artronics/gogradle:latest

