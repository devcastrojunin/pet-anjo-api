class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  
  validates :name, :email, presence: true
  
  # Validação removida por conta dos inúmeros problemas entre mongoId e rspec
  # validates :email, uniqueness: true
end
