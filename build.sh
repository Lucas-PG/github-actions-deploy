#!/bin/bash

# Cria um diretório para empacotamento
mkdir -p package

# Adiciona o arquivo lambda_function.py a um .zip
zip package.zip lambda_function.py

echo "Pacote criado: package.zip"
