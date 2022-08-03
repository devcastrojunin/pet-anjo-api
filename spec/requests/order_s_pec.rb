require 'rails_helper'
require 'swagger_helper'

RSpec.describe 'Orders', type: :request do
  let!(:order) { create(:order) }
  let!(:servico) { create(:servico) }
  Servico.create(
    nome_servico: Faker::Job.field,
    valor_servico: Faker::Number.decimal(l_digits: 2, r_digits: 2)
  )
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )

  describe 'POST /create' do    
    context 'with valid parameters' do      
      before do
        post '/api/v1/orders', params:
                          { order: {
                            user_id: User.last.id,
                            servico_id: Servico.last.id,
                            nome_pet: order.nome_pet, 
                            data_inicio_servico: order.data_inicio_servico, 
                            data_final_servico: order.data_final_servico, 
                            total_unidade_servico:  order.total_unidade_servico
                          } }
      end

      it 'returns the user' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid parameters' do      
      before do
        post '/api/v1/orders', params:
                          { order: {
                            user_id: User.last.id,
                            servico_id: Servico.last.id,
                            nome_pet: "", 
                          } }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'GET /index' do    
    before do
      get api_v1_orders_path
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /orders_by_user_id' do
    before do
      get "/api/v1/user_orders/#{User.last.id}"
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe "DELETE /destroy" do    
    before do
      delete "/api/v1/orders/#{order.id}"
    end

    it 'with success' do
      expect(response).to have_http_status(:ok)
    end
  end
end