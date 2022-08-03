class Servico
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nome_servico, type: String
  field :valor_servico, type: Float

  validates :nome_servico, :valor_servico, presence: true
end

