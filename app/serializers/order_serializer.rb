class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :nome_pet, :data_final_servico, :total_unidade_servico, :data_inicio_servico
  belongs_to :servico

  class ServicoSerializer < ActiveModel::Serializer
      attributes :nome_servico, :valor_servico
  end
end
