require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  let!(:user) { create(:user) }
  path '/api/v1/users' do

    get('list users') do
      tags 'Usuários'
      response(200, 'successful') do

        after do |data|
          data.metadata[:response][:content] = {
            'application/json' => {
              data: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create user') do
      tags 'Usuários'
      response(201, 'successful') do
        consumes 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            users: {
              type: :array,
              items: { '$ref' => '#/definitions/User' }
            }
          },
          required: [ 'name', 'email' ]
        }

        after do |data|
          data.metadata[:response][:content] = {
            'application/json' => {
              data: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end

        run_test!
      end
    end
  end

  path '/api/v1/users/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show user') do
      tags 'Usuários'
      response(200, 'successful') do      
        let(:id) { user.id }

        after do |data|
          data.metadata[:response][:content] = {
            'application/json' => {
              data: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end

        run_test!
      end
    end

    put('update user') do
      tags 'Usuários'
      response(200, 'successful') do
        let(:id) { user.id }        
        consumes 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            users: {
              type: :array,
              items: { '$ref' => '#/definitions/User' }
            }
          },
          required: [ 'name', 'email' ]
        }

        after do |data|
          data.metadata[:response][:content] = {
            'application/json' => {
              data: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete user') do
      tags 'Usuários'
      response(200, 'successful') do
        let(:id) { user.id }

        after do |data|
          data.metadata[:response][:content] = {
            'application/json' => {
              data: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
