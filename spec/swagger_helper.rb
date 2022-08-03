# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|

  config.swagger_root = Rails.root.join('swagger').to_s

  config.swagger_docs = {
    'v1/swagger.yaml' => {
      swagger: '2.0',
      info: {
        title: 'Pet anjo carrinho API V1',
        version: 'v1'
      },
      basePath: '/',
      definitions: {
        User: {
          type: 'object',
          properties: {
            id:    { type: :integer, example: "1" },
            name: { type: :string, example: "Junior Castro" },
            email: { type: :string, example: "junior.castro@teste.com" }
          }
        },
        Servico: {
          type: 'object',
          properties: {
            id:    { type: :integer, example: "1" },
            nome_servico: { type: :string, example: "Passeio" },
            valor_servico:  { type: :float, example: "45.50" }
          }
        },
        Order: {
          type: 'object',
          properties: {
            user_id: { type: :integer, example: "2" },
            servico_id: { type: :integer, example: "3" },
            nome_pet: { type: :string, example: "Totó" },
            data_inicio_servico: { type: :date, example: "2022-08-10" },
            data_final_servico: { type: :date, example: "2022-08-11" },
            total_unidade_servico: { type: :integer, example: "5" }
          }
        },
        ErrorResponse: {
          type: 'object',
          properties: {
            messages: {
              type: 'array',
              items: { type: 'string', example: "Error description" }
            }
          }
        }
      }
    }
  }

  config.swagger_format = :yaml
end
