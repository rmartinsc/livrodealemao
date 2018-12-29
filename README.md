# Livro de Alemão [![Build Status](https://travis-ci.com/livrodealemao/livrodealemao.svg?branch=master)](https://travis-ci.com/livrodealemao/livrodealemao) [![codecov](https://codecov.io/gh/livrodealemao/livrodealemao/branch/master/graph/badge.svg)](https://codecov.io/gh/livrodealemao/livrodealemao)

Aprenda alemão de forma fácil.
--------------------------------


Este projeto é desenvolvido em Elixir. Para contribuir, primeiramente você precisa te-lo em sua maquina local. Se você é um desenvolvedor que já tem experiencia contribuindo para projetos open source utilizando Elixir+Phoenix+Docker, pode pular a seção de introdução. Caso o contrario leia adiante.

1. Associando o repositorio a sua conta no GitHub

Utilizando o cliente online do GitHub, onde voce provavelmente está lendo isto, no canto superior direito da tela voce encontrará o icone "Fork". Ao clicar nele, o repositorio livrodealemao será adicionado a sua conta.

2. Utilizando o repositorio na maquina local

Os proximos passos requerem que voce tenha o cliente do github instalado na sua maquina local ou tenha suas chaves SSH configuradas ou ainda atraves de https. 

Para instalar o cliente do github visite https://desktop.github.com e baixe a versao compativel com o seu sistema operacional.

A configuracao das suas chaves SSH para executar os comandos git via terminal pode ser feita seguindo o guia em https://help.github.com/articles/reviewing-your-ssh-keys/

Com o setup da sua escolha o passo seguinte é clonar o repositorio remoto na sua maquina local. 

No Github for desktop isto é feito atraves da operacao Add New Repository->Clone repository

Atraves de SSH git clone git@github.com:[SEU USUARIO]/livrodealemao.git

Atraves de HTTPS git clone https://github.com/[SEU USUARIO]/livrodealemao.git

Isso ira criar um diretorio na sua maquina local contendo os arquivos do projeto

Pronto! A partir dai é hora de se familiarizar com o projeto e inicia-lo!

2. Instalando o docker

Docker é uma aplicacao de conteinerizacao de aplicacoes e ambientes. Imagine ter um outro sistema operacional separado do que voce regularmente usa, perfeitamente configurado para nosso projeto. Bem o Docker permite isso de maneira simples e mais barata que as antigas VMs.

Instalar o docker é simples e requer apenas o registro no site https://www.docker.com/get-started

Uma vez instalado o docker e utilizando o terminal, navegue para o diretorio raiz do seu projeto e execute: docker-compose up

Tudo correndo bem, apos alguns minutos voce tera um ambiente de desenvolvimento up and running, para verificar, basta navegar para
localhost:4000 no seu navegador.