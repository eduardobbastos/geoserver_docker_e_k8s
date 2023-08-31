#cria diretório
sudo mkdir /geoserver
#muda as permições
sudo chmod 777 -R /geoserver
# baixa os arquivos necessário
cd /geoserver 
git clone git@github.com:eduardobbastos/geoserver_docker.git


# Executando o Docker compose
cd /geoserver/geoserver_docker/producao/
docker compose -f docker-compose.yaml up -d