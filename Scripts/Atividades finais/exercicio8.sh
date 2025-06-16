#!/bin/bash
echo "Digite uma entrada: "

entrada="$1"

# Determina o tipo de entrada
if [ -f "$entrada" ]; then
    echo "'$entrada' é um **arquivo regular**."
elif [ -d "$entrada" ]; then
    echo "'$entrada' é um **diretório**."
else
    echo "'$entrada' é de **outro tipo** ou **não existe**."
fi

# Lista as permissões associadas
if [ -e "$entrada" ]; then # Verifica se a entrada existe antes de tentar listar as permissões
    echo "Permissões para '$entrada':"
    ls -ld "$entrada"
else
    echo "Não foi possível listar as permissões para '$entrada', pois ele não existe."
fi
