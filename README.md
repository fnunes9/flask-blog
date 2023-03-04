# Flask-Blog-Exercise

Esta página apresenta uma simples aplicação Flask, que deve ser conteinerizada.

## Organização do projeto

* static: contém arquivos estáticos, por exemplo, arquivos de estilos .css.
* templates: contém todos os templates usando a engine Jinja. Veja *https://flask.palletsprojects.com/en/2.2.x/templating/* para mais detalhes.
* app: A aplicação Flask, um micro web framework. Leia mais em *https://flask.palletsprojects.com/en/2.2.x/* .

## Criando uma conta no Github

Para começar, você deve yer uma conta no github. Siga esse [link](https://github.com/join) e você será capaz de criar sua conta.

## Criando um projeto no Git(hub)

Explore o Git, caso você não esteja familizarizado com controle de versão. Faça esse tutorial *https://docs.github.com/en/get-started/quickstart/hello-world* para aprender mais sobre o Git(hub) ao criar um simples projeto. **Atenção** para termos como *'commit', 'merge', 'branch', 'pull request'*. São termos fundamentais para o conhecimento do Git.

## (1) Clonando um projeto

Certifique que o Git esteja instalado em sua máquina local (virtual) Veja mais em: *https://git-scm.com/book/en/v2/Getting-Started-Installing-Git*. 

* Acessando um repositório:

Acesse *https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository* para entender o que deve ser feito para criar/clonar um repositório. Para este exercício, você deverá clonar este repositório. Suas credenciais de acesso serão exigidas.

Após clonar, explore o projeto para entender sua arquitetura.

Atenção, crie um arquivo .env contendo a variável de ambiente **SESSION_SECRET_KEY_DEV** e uma string hexadecimal como valor. Use o *python secrets*.

## (2) Interagindo com a aplicação localmente

Para executar a aplicação, temos que colocar o Flask para execução em conjunto com a aplicação.

- No diretório do projeto, digite:
   1. Carregue o ambiente desta aplicação: `source env/bin/activate`.
   2. Instale os pacotes necessários: `pip install -r requirements.txt`
   3. Execute *app.py*
   4. Acesse o endereço *localhost* na porta 5000 (localhost:5000) para visualizar a aplicação.

- Para desativar o ambiente, digite `deactivate`

## (3) Docker

- Crie uma conta no docker-hub. Usaremos essa conta para compartilharmos imagens docker. Acesse *https://hub.docker.com/*.

- Instale o docker em sua máquina local (virtual). Siga *https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository*.

- Os comandos Docker que mais usaremos são:
   - sudo docker image build -t image-name .
   - sudo docker image ls
   - sudo docker container ls -a
   - sudo docker container ps
   - sudo docker run [OPTIONS] image-name (ou image-id)
   - sudo docker stop (ou start) image-name (ou image-id)
   - sudo docker rm image-name (ou image-id)
   - sudo docker image rm image-name (ou image-id)

- Para esta prática, iremos construir uma imagem, salvá-la em nosso repositorio docker hub, e em seguida usar essa imagem para rodar em um conteiner.
   1. `sudo docker image build -t flask-blog-app .`
   2. Certifique que a imagem está criada.
   3. Execute um conteiner para essa imagem. `sudo docker run -p 5000:5000 -d flask-blog-app`
   4. Certifique que o conteiner está em execução.
   5. Acesse o endereço *localhost* na porta 5000 (localhost:5000) para visualizar a aplicação.

- Salvando imagem no docker hub.
   1. Acesse o docker hub para criar um repositório.
   2. Autenticar no docker hub na máquina local (virtual): `sudo docker login`
   3. Criar uma *tag* para a imagem docker de referência: `sudo docker tag flask-blog-app <your-docker-hub-username>/<repository-name>`
   4. Publicar imagem: `sudo docker push <your-docker-hub-username>/<repository-name>`

- Para usar a sua imagem, basta executar na sua máquina local (virtual):
   `sudo docker run -p 5000:5000 -d <your-docker-hub-username>/<repository-name>`

- Pratique e estude bastante. :rocket: