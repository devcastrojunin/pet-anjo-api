class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
