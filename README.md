# 📦 Deploy do GeoServer com PostGIS via Docker Compose (com Proxy Reverso)

Este documento descreve como implantar o GeoServer integrado ao PostGIS usando Docker Compose, com suporte a HTTPS, instalação de plugins e funcionamento por trás de um proxy reverso (como NGINX ou HAProxy). Ideal para ambientes de produção com controle de acesso e segurança.

---

## 📑 Índice

1. [Visão Geral](#visão-geral)  
2. [Diferenciais](#diferenciais)  
3. [Estrutura de Diretórios](#estrutura-de-diretórios)  
4. [Docker Compose](#docker-compose)  
   - [Serviço `db`](#serviço-db)  
   - [Serviço `geoserver`](#serviço-geoserver)  
5. [Variáveis de Ambiente (`.env`)](#variáveis-de-ambiente-env)  
6. [Execução](#execução)  
7. [Acesso via Proxy Reverso](#acesso-via-proxy-reverso)  
8. [Referências](#referências)

---

## 📌 Visão Geral

O ambiente é composto por dois serviços: o banco de dados espacial PostGIS e o GeoServer. Ambos são executados em contêineres Docker com persistência de dados via volumes nomeados. A aplicação é publicada por um proxy reverso configurado externamente (NGINX, Apache ou HAProxy), que gerencia as conexões HTTPS nas portas 80/443.

---

## 🌟 Diferenciais

- ✅ Suporte a HTTPS via proxy reverso  
- ✅ Compatibilidade com plugins adicionais no GeoServer  
- ✅ Persistência de dados via volumes Docker  
- ✅ Parametrização completa por `.env`  
- ✅ Integração com infraestrutura de rede corporativa

---

## 📂 Estrutura de Diretórios

```bash
/geoserver/geoserver_docker/producao
├── docker-compose.yaml
├── .env
├── README.md
``

## 📁 Arquivos do Projeto

- `docker-compose.yaml`: Orquestração dos serviços GeoServer e PostGIS.
- `.env`: Variáveis de ambiente para configurar o deploy.
- `README.md`: Este documento.

---

## 🐳 Docker Compose

### Serviço `db` (PostGIS)

- **Imagem:** `docker.io/postgis/postgis:${POSTGIS_VERSION_TAG}`
- **Container:** `geoserver_db_prod`
- **Porta:** `${POSTGRES_PORT}:5432`
- **Volume:** `geo-db-data:/var/lib/postgresql`
