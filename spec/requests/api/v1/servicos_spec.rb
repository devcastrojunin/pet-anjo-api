require 'rails_helper'
require 'swagger_helper'

RSpec.describe 'api/v1/servicos', type: :request do
  let!(:servico) { create(:servico) }

  path '/api/v1/servicos' do

    get('list servicos') do
      tags 'Serviços'
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

    post('create servico') do
      tags 'Serviços'
      response(201, 'successful') do
        consumes 'application/json'
        parameter name: :servico, in: :body, schema: {
          type: :object,
          properties: {
            type: :array,
            items: { '$ref' => '#/definitions/Servico' }
          },
          required: [ 'nome_servico', 'valor_servico' ]
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

  path '/api/v1/servicos/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show servico') do
      tags 'Serviços'
      response(200, 'successful') do
        let(:id) { servico.id }

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

    put('update servico') do
      tags 'Serviços'
      response(200, 'successful') do
        let(:id) { servico.id }
        consumes 'application/json'
        parameter name: :servico, in: :body, schema: {
          type: :object,
          properties: {
            users: {
              type: :array,
              items: { '$ref' => '#/definitions/Servico' }
            }
          },
          required: [ 'nome_servico', 'valor_servico' ]
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

    delete('delete servico') do
      tags 'Serviços'
      response(200, 'successful') do
        let(:id) { servico.id }

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
