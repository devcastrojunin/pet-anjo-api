class ServicoSerializer < ActiveModel::Serializer
  DESCONTO = 10
  attributes :id, :nome_servico, :valor_servico, :desconto_assinante, :created_at, :updated_at

  def desconto_assinante
    object.valor_servico - (object.valor_servico * DESCONTO / 100)
  end
  
end
