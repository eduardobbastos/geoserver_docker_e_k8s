#!/bin/bash

# Defina o nome do namespace (workspace) e o nome do contêiner
NAMESPACE="geoserver"
CONTAINER_NAME="geoserver"

# Obtenha o nome do pod dentro do namespace
POD_NAME=$(kubectl get pods -n "$NAMESPACE" -l app="$CONTAINER_NAME" -o jsonpath='{.items[0].metadata.name}')

# Verifique se o nome do pod foi obtido corretamente
if [ -n "$POD_NAME" ]; then
  # Copie os arquivos para o pod
  kubectl cp data_arquivos/. "$NAMESPACE/$POD_NAME:/opt/geoserver/data_dir" -c "$CONTAINER_NAME"
else
  echo "Não foi possível encontrar um pod no namespace $NAMESPACE com o rótulo 'app=$CONTAINER_NAME'."
fi
