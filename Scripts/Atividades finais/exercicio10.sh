#!/bin/bash

# Conta o número de linhas da saída do comando 'ps aux',
# que lista todos os processos em execução.
# Subtraímos 1 para não contar a linha do cabeçalho.
quantidade_processos=$(ps aux | wc -l)
quantidade_processos=$((quantidade_processos - 1))

echo "Atualmente, existem $quantidade_processos processos em execução neste sistema."
