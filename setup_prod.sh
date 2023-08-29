#necessário para evitar quebrar o sistema em execução
docker container stop geoserver_app_prod geoserver_db_prod

#copia os plugins que vc deseja instalar
yes | cp -rfv /geoserver_sdt/geoserver_sdt/infraestrutura/Docker/producao_proxy/plugin/* /var/lib/docker/volumes/geoserver-install-plugin_prod/_data/

chmod 777 -R /var/lib/docker/volumes/geoserver-install-plugin_prod/_data/

docker container start geoserver_app_prod geoserver_db_prod

#copia os arquivos dos dados do diretório data 
sleep 20

docker container stop geoserver_app_prod geoserver_db_prod

yes | cp -rfv /geoserver_sdt/geoserver_sdt/infraestrutura/Docker/producao_proxy/data_arquivos/* /var/lib/docker/volumes/geoserver-data_prod/_data/


chmod 777 -R /var/lib/docker/volumes/geoserver-data_prod/_data/

#start do container

docker container start geoserver_app_prod geoserver_db_prod

