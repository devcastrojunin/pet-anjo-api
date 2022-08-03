require 'rails_helper'
require 'swagger_helper'

RSpec.describe 'api/v1/orders', type: :request do
  let!(:order) { create(:order) }
  let!(:servico) { create(:servico) }
  let!(:user) { create(:user) }  

  path '/api/v1/orders' do
    get('list servicos') do
      tags 'Orders'
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
  end

  path '/api/v1/orders/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'
    delete('delete order') do
      tags 'Orders'
      response(200, 'successful') do
        let(:id) { order.id }

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