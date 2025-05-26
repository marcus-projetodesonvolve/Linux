#!/bin/bash

#Solicita o nome do arquivo
echo "Digite o nome do Arquivo:"
read nome_arquivo

#Busca o arquivo iniciando da raiz
find / -name $nome_arquivo

