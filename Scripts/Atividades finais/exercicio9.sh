#!/bin/bash

# Gera um número aleatório entre 1 e 100
numero_secreto=$(( RANDOM % 100 + 1 ))
tentativas=0
adivinhou=false

echo "Bem-vindo ao Jogo de Adivinhação!"
echo "Estou pensando em um número entre 1 e 100."

# Loop principal do jogo
while [ "$adivinhou" == false ]; do
    read -p "Sua adivinhação: " palpite
    tentativas=$(( tentativas + 1 ))

    if ! [[ "$palpite" =~ ^[0-9]+$ ]]; then
        echo "Por favor, digite um número válido."
    elif [ "$palpite" -lt "$numero_secreto" ]; then
        echo "Muito baixo! Tente um número maior."
    elif [ "$palpite" -gt "$numero_secreto" ]; then
        echo "Muito alto! Tente um número menor."
    else
        echo "Parabéns! Você adivinhou o número $numero_secreto em $tentativas tentativas."
        adivinhou=true
    fi
done

echo "Obrigado por jogar!"
