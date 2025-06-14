#!/bin/bash

# Renomeia todos os arquivos .txt do tipo log*.txt para .log
for arquivo in log*.txt; do
    # Verifica se há arquivos correspondentes
    if [ -e "$arquivo" ]; then
        novo_nome=$(echo "$arquivo" | sed 's/\.txt$/.log/')
        mv "$arquivo" "$novo_nome"
        echo "Renomeado: $arquivo -> $novo_nome"
    else
        echo "Nenhum arquivo log*.txt encontrado."
        break
    fi
done
