class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nome_pet, type: String
  field :data_inicio_servico, type: Date
  field :data_final_servico, type: Date
  field :total_unidade_servico, type: Integer
  
  belongs_to :user
  belongs_to :servico

  validates :nome_pet, :data_inicio_servico, :data_final_servico, :total_unidade_servico, presence: true

end

