#!/bin/bash

# Cria um diretório para empacotamento
mkdir -p package

# Adiciona o arquivo lambda_function.py a um .zip
zip package.zip lambda_function.py

echo "Pacote criado: package.zip"

# Remove e cria o diretório function
rm -rf function
mkdir function

# Configura o diretório function
mv package.zip function
(cd function && unzip package.zip)

echo "Pacote movido para o diretório function"
