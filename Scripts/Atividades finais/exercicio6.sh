#!/bin/bash

#solicita ao usuario um numero
echo "Digite um Numero:"
read numero

#criando a tabela de multiplicacao desse numero
echo "A Tabela de Multiplicação do $numero: "
for i in {1..10}; do
	resultado=$(echo "$numero * $i" )
	echo "$numero x $i = $resultado"
done
