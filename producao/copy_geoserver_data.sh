#necessário para evitar quebrar o sistema em execução
docker container stop geoserver_app_prod geoserver_db_prod

yes | cp -rfv /geoserver/geoserver_docker/producao/data_arquivos/* /var/lib/docker/volumes/geoserver-data_prod/_data/

chmod 777 -R /var/lib/docker/volumes/geoserver-data_prod/_data/

#start do container

docker container start geoserver_app_prod geoserver_db_prod


