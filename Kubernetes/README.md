# Documentação do Kubernetes Deployment - Geoserver

## Arquivo: k8s/deployment.yaml

### Visão Geral
O arquivo de implantação define um Deployment para o Geoserver no Kubernetes. Ele especifica dois containers: `geoserverdb` (baseado na imagem `kartoza/postgis:latest`) e `geoserver` (baseado na imagem `kartoza/geoserver:latest`).

### Configuração do Container `geoserverdb`
- **Imagem**: `kartoza/postgis:latest`
- **Variáveis de Ambiente**:
  - Banco de dados, usuário, senha e outras configurações relacionadas ao Postgres.
- **Recursos**:
  - Limite de memória: 1000Mi
  - Limite de CPU: 2000m
- **Porta do Container**: 5432

### Configuração do Container `geoserver`
- **Imagem**: `kartoza/geoserver:latest`
- **Variáveis de Ambiente**:
  - Configurações do Geoserver, incluindo credenciais de admin, configurações de memória, porta HTTP/HTTPS e outras.
- **Recursos**:
  - Limite de memória: 2000Mi
  - Limite de CPU: 2000m
- **Portas do Container**: 8080, 8443
- **Montagem de Volume**:
  - Monta um volume chamado `volumegeo` em `/opt/geoserver`.

### Volumes
- Define um volume chamado `volumegeo` do tipo `emptyDir`.

### Replica
- Define `replicas: 1`, significando uma única instância do Deployment.

### Seletores e Labels
- Usa a label `app: geoserver` para associação entre o Deployment e seus Pods.

## Considerações
- O Deployment é feito no namespace `geoserver`.
- As configurações de limite de recursos garantem a alocação adequada de CPU e memória.
- As portas e variáveis de ambiente são configuradas para garantir a conectividade e configuração corretas dos serviços.
