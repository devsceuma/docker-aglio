# docker-aglio

*Image that provides an Aglio installation for document generation.*

A Imagem Docker Aglio provê a utilização em container do [Aglio Render](https://github.com/danielgtaylor/aglio) para documentação de API's [Blueprint](https://apiblueprint.org/).

Obtenha esta imagem no [Docker Hub do Ceuma NTI](https://hub.docker.com/r/ceumanti/docker-aglio).

### Como usar isto

Você pode gerar a documentação para seu projeto usando o Aglio com um único comando, para isso existem somente alguns pré requisitos:

- É necessário ter definido no projeto um arquivo de documentação com a extensão `.apib`.
- É necessário configurar o comando para um diretório específico aonde o seu container mantém o projeto ou arquivo de documentação.

Ex: seu o seu container mantém o projeto em `/app`, configure o comando para este diretório, se o container mantém o projeto em `/application`, configure o comando para este diretório.

O comando a seguir entende que o container mantém o projeto em `/application`. Para gerar a documentação execute o seguinte comando:

`docker run -v $PWD:/application ceumanti/docker-aglio:latest aglio -i ./application/app/docs/top-five-backend.apib --theme-full-width --no-theme-condense -o ./application/app/templates/apidocs/index.html`
