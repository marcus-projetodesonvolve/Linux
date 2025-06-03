#!/bin/bash

echo "De 1 a 5, quanto você gosta de café?"
read nota

case $nota in
1)
	echo  "Gosta Pouco de Café";;
2)
	echo "Gosta";;
3)
	echo "Gosta Muito";;
4)
	echo "Gosta Demais";;
5)
	echo "Viciado em Café";;
esac
