#!/bin/bash

Logs=$(date +'%Y%m%d')
mkdir $Logs

cd $Logs

echo "Digite quantos arquivos devo criar:"
read quant_logs

echo "Criando os arquivos"

for i in $(seq $quant_logs);
do
	touch "log_$i.txt"
done
ls
