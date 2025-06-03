#!/bin/bash

if [$EUID -eq 0 ]
then
     echo "Usuario Root"
else
     echo  "Não é usuario Root"
fi
