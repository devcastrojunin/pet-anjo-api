require 'rails_helper'

RSpec.describe Servico, type: :model do
    let(:servico) { create(:servico) }

    context "Servico validations" do
      describe "Fields validation" do
        it "Servico should be created" do
          expect(servico).to be_valid
        end  
      end
  
      describe "Fields required" do
        it { should validate_presence_of(:nome_servico) }
        it { should validate_presence_of(:valor_servico) }
      end
    end
end
