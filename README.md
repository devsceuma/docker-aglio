## docker-aglio

*Image that provides an Aglio installation for document generation.*

A Imagem Docker Aglio provê a utilização em container do [Aglio Render](https://github.com/danielgtaylor/aglio) para documentação de API's [Blueprint](https://apiblueprint.org/).

### Como usar isto

Você pode gerar a documentação para seu projeto usando o Aglio com um único comando, para isso existem somente alguns pré requisitos:

- É necessário ter definido no projeto um arquivo de documentação com a extensão `.apib`.
- É necessário configurar o comando para um diretório específico aonde o seu container mantém o projeto ou arquivo de documentação.

Ex: caso o seu container mantenha o projeto em `/app`, configure o comando para este diretório, se o container mantém o projeto em `/application`, configure o comando para este diretório. O Workdir desta imagem está configurado para `/application`.

O comando a seguir entende que o container mantém o projeto em `/application`. Para gerar a documentação execute o seguinte comando:

`docker run -it --rm -v $(pwd):/application -w /application markteam/docker-aglio:latest aglio -i ./application/app/docs/doc-name.apib --theme-full-width --no-theme-condense -o ./application/app/templates/apidocs/index.html`

**OBS:** Certifique-se de que seu projeto contém um arquivo `doc-name.apib` em: `/app/docs/doc-name.apib`
