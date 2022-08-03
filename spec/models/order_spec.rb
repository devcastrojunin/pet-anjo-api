require 'rails_helper'

RSpec.describe Order, type: :model do
    let(:order) { create(:order) }

    context "Order validations" do
        describe "Fields validation" do
            it "Order should be created" do
                expect(order).to be_valid
            end 
        end
        describe "Fields required" do
            it { should validate_presence_of(:nome_pet) }
            it { should validate_presence_of(:data_inicio_servico) }
            it { should validate_presence_of(:data_final_servico) }
            it { should validate_presence_of(:total_unidade_servico) }
        end
    end
  
end
