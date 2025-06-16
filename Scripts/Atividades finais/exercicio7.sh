#!/bin/bash

# Solicita ao usuário o nome de um arquivo ou diretório
read -p "Digite o nome de um arquivo ou diretório: " entrada

# Verifica se a entrada existe
if [ -e "$entrada" ]; then
  if [ -f "$entrada" ]; then
    echo "'$entrada' é um arquivo."
  elif [ -d "$entrada" ]; then
    echo "'$entrada' é um diretório."
  else
    echo "'$entrada' é de outro tipo (possivelmente link, dispositivo, etc)."
  fi

  # Exibe as permissões do arquivo/diretório
  permissoes=$(ls -ld "$entrada" | cut -d " " -f1)
  echo "Permissões: $permissoes"
else
  echo "O arquivo ou diretório '$entrada' não existe."
fi
