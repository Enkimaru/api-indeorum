<!-- ABOUT THE PROJECT -->
## Sobre o projeto
Uma API no padrão RESTful usando Ruby on Rails como backend e PostgreSQL com banco de dados. Também utiliza o plugin json-resources para requisições no padrão JSONAPI.

Retorna uma lista de Posts e seus respectivos Comments e também é possível popular o banco com mais Posts e Comments.

### Desenvolvido com

* [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html)
* [PostgreSQL](https://www.postgresql.org/)
* [JSONAPI::Resources](https://jsonapi-resources.com/)



<!-- GETTING STARTED -->
## Prerequisitos

É necessário ter instalado Ruby on Rails e PostgreSQL.

### Instalação

1. A configuração do usuário do banco de dados esta no arquivo 
* config\database.yml
  ```
  development:
    <<: *default
    database: api_indeorum_development
    username: 
    password: 

  test:
    <<: *default
    database: api_indeorum_test
    username: 
    password: 
  ```
2. Após os dados serem configurados, deve-se criar a database no PostgreSQL
    ```
    rails db:create
    ```
3. E criar as tabelas na banco
    ```
    rails db:migrate
    ```
4. Caso queira popular o banco com Posts e Comments, existe o arquivo seed para isso
    ```
    rails db:seed
    ```
5. Depois de tudo configurado é só iniciar o server
    ```
    rails s
    ```
<!-- USAGE EXAMPLES -->
## Utilização
Existem as seguntes rotas [GET]:
  
* /populate
  ```
  Para gerar 5 [Posts] aleatórios e [Comments] relacionados
  ```
* /posts
  ```
  Retorna todos os [Posts] com a quantidade de [Comments] relacionados
  ```
* /posts?sort=title
  ```
  Retorna todos os posts ordenados por [Title]
  ```
* /posts?include=comments&fields[comments]=name,message
  ```
  Retorna todos os [Posts] com seus [Comments]
  ```
Existem as seguntes rotas [POST]:
* /posts
  ```
  Cria um novo [Post]
  ```
* /comments
  ```
  Cria um novo [Comment] relacionado à um [Post] válido
  ```

_O arquivo api-indeorum.postman_collection.json para o Postman com todas as rotas encontra-se na raiz do projeto._
