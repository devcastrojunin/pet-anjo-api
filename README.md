# Pet anjo API checkout
API desenvolvida visando o desafio proposto para desenvolvedor Ruby pleno.

## Modelo da API 
A API consiste em no relacionamento entre dados de
- Usuário
- Serviço
- Order

### Estrutura de relacionamento de dados
![img](/images/uml.png)

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