require 'rails_helper'

RSpec.describe 'Servicos', type: :request do
  let!(:servico) { create(:servico) }
  
  describe 'GET /index' do
    before do
      get api_v1_servicos_path
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /show' do
    before do
      get "/api/v1/servicos/#{servico.id}"
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /create' do    
    context 'with valid parameters' do
      before do
        post '/api/v1/servicos', params:
                          { servico: {
                            nome_servico: servico.nome_servico,
                            valor_servico: servico.valor_servico
                          } }
      end

      it 'returns the user' do
        expect(response).to have_http_status(:created)  
      end
    end

    context 'with invalid parameters' do
      before do
        post '/api/v1/servicos', params:
                          { servico: {
                            nome_servico: "",
                            valor_servico: false
                          } }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do   

    before do
      delete "/api/v1/servicos/#{servico.id}"
    end

    it 'with success' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe "PUT /update" do     

    before do
      put "/api/v1/servicos/#{servico.id}", params:
                          { servico: {
                            name: "Novo nome"
                          } }
    end

    it 'with success' do
      expect(response).to have_http_status(:ok)
    end
  end
end