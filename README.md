# Pet anjo API checkout
API desenvolvida visando o desafio proposto para desenvolvedor Ruby pleno.

## Modelo da API 
A API consiste no relacionamento entre dados de
- Usuário
- Serviço
- Order

### Estrutura de relacionamento de dados
![img](/images/uml.png)

### Endpoints
```js
// Users
GET /users //Retorna a lista de usuários 
GET /users/:id //Retorna um usuário 
POST /users //Cria um novo usuário 
PUT /users/:id //Atualiza as informações do usuário 
DELETE /users/:id //Remove um usuário

// Users
GET /servicos //Retorna a lista de serviços 
GET /servicos/:id //Retorna um serviço 
POST /servicos //Cria um novo serviço 
PUT /servicos/:id //Atualiza as informações do serviço 
DELETE /servicos/:id //Remove um serviço

// Users
GET /orders //Retorna a lista de orders 
GET /user_orders/:id //Retorna as orders do usuário 'logado'
POST /orders //Cria uma nova order 
DELETE /orders/:id //Remove uma order

```
---
## Instalação do projeto
1. Baixe o projeto utilizando o seguinte comando: 
```
git clone https://github.com/devcastrojunin/pet-anjo-api.git
```
2. Instalar o mongoDB: Instale o mongoDB através dos links de referência abaixo e execute a conexão:
    - [Instalação Linux Ubuntu](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) 
    - [Instalação no windows](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-windows-unattended/) 
    - [Instalação no MacOS](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x-tarball/) 

3. Acesse a raiz do projeto e instale as gems: 
```
bundle install
```
4. Verifique no diretório `config/mongoid.yml` e veja se as configurações de conexão do mongo estão de acordo.
5. Rode o comando `rails db:seed` para popular a base com alguns usuários e serviços iniciais.
6. Execute a aplicação com o comando `rails s`

## Testes
Os testes da aplicação foram realizados utilizando RSpec para teste das models e RSpec + Rswag para testes das controllers integrada a documentação no swagger.

Para rodar os testes execute na raiz do comando: `rspec`

## Documentação
Para escrita da documentação da API foi utilizada a gem Rswag. Essa gem integra o RSpec com o swagger.
Para visualizar a documentação do projeto, após a aplicação rodando acesse: [http://localhost:3000/api-docs](http://localhost:3000/api-docs/index.html)

Observação: Também estou disponibilizando a colection do postman. O arquivo `Pet Anjo Checkout.postman_collection.json` está na raiz do projeto.