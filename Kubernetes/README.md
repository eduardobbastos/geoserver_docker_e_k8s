# Geoserver no Kubernetes - Documentação

Este repositório contém os arquivos de configuração necessários para implantar o Geoserver no Kubernetes (K8s). Inclui configurações para Deployments, Services, Persistent Volume Claims e muito mais.

## Índice

- [Visão Geral](#visão-geral)
- [Configurações](#configurações)
  - [Namespace](#namespace)
  - [Deployment](#deployment)
  - [Persistent Volume Claim (PVC)](#persistent-volume-claim-pvc)
  - [Service](#service)
- [Script de Configuração Inicial](#script-de-configuração-inicial)
- [Estrutura de Arquivos](#estrutura-de-arquivos)
- [Comandos Úteis](#comandos-úteis)

## Visão Geral

O projeto Geoserver no Kubernetes visa facilitar a implantação e gerenciamento do Geoserver, um servidor de mapas de código aberto, em um ambiente de orquestração de contêineres.

## Configurações

### Namespace

Definição do namespace `geoserver` para isolar os recursos do Geoserver dentro do cluster Kubernetes.

### Deployment

Configuração do Deployment do Geoserver e do banco de dados PostGIS, especificando imagens, variáveis de ambiente e recursos.

### Persistent Volume Claim (PVC)

Criação de um PVC chamado `volumegeo` para armazenamento persistente de dados geoespaciais.

### Service

Exposição do Geoserver através de um serviço Kubernetes, configurando NodePorts para acesso HTTP e HTTPS.

## Script de Configuração Inicial

Instruções para a execução do script `setup.sh`, que automatiza a configuração inicial do Geoserver no cluster.

## Estrutura de Arquivos

Lista dos arquivos de configuração do Kubernetes presentes no diretório `k8s`, incluindo `deployment.yaml`, `namespace.yaml`, `pvc.yaml`, `service.yaml` e `setup.sh`.

## Comandos Úteis

Coleção de comandos úteis para a gestão dos recursos do Kubernetes, como visualização de logs e inspeção de containers.

---

Este documento é uma referência para a implantação e gerenciamento do Geoserver no Kubernetes, fornecendo uma visão clara e detalhada das configurações e práticas recomendadas.
