# Livro de Alemão [![Build Status](https://travis-ci.com/livrodealemao/livrodealemao.svg?branch=master)](https://travis-ci.com/livrodealemao/livrodealemao) [![codecov](https://codecov.io/gh/livrodealemao/livrodealemao/branch/master/graph/badge.svg)](https://codecov.io/gh/livrodealemao/livrodealemao)

Aprenda alemão de forma fácil.

https://www.livrodealemao.com.br

## Sobre

Este repositório representa o código fonte do site Livro de Alemão, que tem por objetivo ensinar gratuitamente o idioma alemão para falantes de português.

É um sistema feito com [Elixir 1.7](https://elixir-lang.org/) e [Phoenix 1.4](https://phoenixframework.org/).

Para banco de dados, é necessário ter [PostgreSQL 11.1](https://www.postgresql.org/).

## Contribuindo

Para contribuir, primeiramente você precisa tê-lo em sua máquina local. Se você é um desenvolvedor que já tem experiência contribuindo para projetos open-source utilizando Elixir+Phoenix+Docker, pode pular a seção de introdução. Caso o contrario leia adiante.

### 1. Associando o repositório à sua conta no GitHub

Utilizando o cliente online do GitHub, onde você provavelmente está lendo isto, procure pelo o ícone "Fork". Ao clicar nele, o repositório livrodealemao será adicionado à sua conta.

### 2. Utilizando o repositório na máquina local

Os próximos passos requerem que você tenha o cliente do GitHub instalado na sua máquina local e suas chaves SSH configuradas.

Para instalar o cliente do GitHub visite [https://desktop.github.com](https://desktop.github.com) e baixe a versão compatível com o seu sistema operacional.

A configuração das suas chaves SSH para executar os comandos git via terminal pode ser feita seguindo o guia em [https://help.github.com/articles/reviewing-your-ssh-keys/](https://help.github.com/articles/reviewing-your-ssh-keys/).

Com o setup da sua escolha o passo seguinte é clonar o repositório remoto na sua máquina local.

### 3. Clonando o repositório

#### Através do GitHub for Desktop

Add New Repository->Clone repository.

#### Através de SSH

```terminal
git clone git@github.com:[SEU USUARIO]/livrodealemao.git
```

#### Através de HTTPS

```terminal
git clone https://github.com/[SEU USUARIO]/livrodealemao.git
```

Isso irá criar um diretório na sua máquina local contendo os arquivos do projeto.

Pronto! A partir daí é hora de se familiarizar com o projeto e iniciá-lo!

### 4. Instalando o Docker

[Docker](https://www.docker.com/) é um software de conteinerização de aplicações e ambientes. Imagine ter um outro sistema operacional separado do que você regularmente usa, perfeitamente configurado para nosso projeto. Bem, o Docker permite isso de maneira simples e mais barata que as antigas VMs.

Instalar o docker é simples e requer apenas o registro no site [https://www.docker.com/get-started](https://www.docker.com/get-started).

Uma vez instalado o Docker, utilize seu terminal para navegar até diretório raiz do seu projeto, e então execute: `make run` ou `docker-compose up`.

Tudo correndo bem, após alguns minutos você terá um ambiente de desenvolvimento `up and running`. Para verificar, basta acessar [http://localhost:4000](http://localhost:4000) no seu navegador.

### 5. Entregando sua contribuição

Quando seu código estiver pronto, abra um Pull Request para o nosso branch master.

Lembre-se de seguir as seguintes regras:

* Commits em português  
* Incluir testes  
* Cobertura de código em no mínimo 80%

## Comandos

Para facilitar o desenvolvimento local, consulte os comandos no [Makefile](./Makefile).

```terminal
# Montar o projeto
make build

# Abrir um console interativo com o projeto carregado
make console

# Abrir um console do banco de dados
make db-console

# Rodar as migrations do banco de dados
make db-migrate

# Fazer um rollback das migrations do banco de dados
make db-rollback

# Reconstruir o banco de dados
make db-reset

# Restartar o projeto
make restart

# Rodar o projeto
make run

# Acessar o console do container
make shell

# Rodar os testes do projeto
make test

# Atualizar as dependências do projeto
make update
```

## Licença

O Livro de Alemão está licenciado com a [MIT License](./LICENSE).
