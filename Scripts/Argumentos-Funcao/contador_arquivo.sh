#!/bin/bash

contador()
{
	local diretorio=$1
	local total=$(ls $diretorio | wc -l)
	echo "Diretorio $diretorio tem $total de arquivos"
}

#Contando os arquivos nas pastas /etc, /var, /home/$USER

contador /var
contador /etc
contador /home/$USER
