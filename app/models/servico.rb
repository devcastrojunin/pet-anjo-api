class Servico
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nome_servico, type: String
  field :nome_pet, type: String
  field :data_inicio_servico, type: Date
  field :data_final_servico, type: Date, default: nil
  field :valor_servico, type: Float, default: 0.00
  field :total_unidade_servico, type: Integer, default: 0

  validates :nome_servico, :nome_pet, :data_inicio_servico, :data_final_servico, :valor_servico, :total_unidade_servico, presence: true

end

