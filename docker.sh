rm -rf .docker
docker-machine create --driver virtualbox Char
docker-machine stop Char
mv .docker goinfre
ln -s goinfre/.docker
docker-machine start Char
eval $(docker-machine env Char)