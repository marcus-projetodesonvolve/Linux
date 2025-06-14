#!/bin/bash

#Leitura do numero
echo "Digite um numero:"
read numero
#verificar se o numero é positivo,negativo ou zero
if [ "$numero" -gt 0 ]; then
	echo "Numero Positivo"
elif [ "$numero" -lt 0 ]; then
	echo "Negativo"
else
	echo "ZERO"
fi
