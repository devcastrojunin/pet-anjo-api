require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { create(:user) }

    context "User validations" do
      describe "Fields validation" do
        it "User should be created" do
          expect(user).to be_valid
        end  
      end
  
      describe "Fields required" do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:email) }
      end
    end
end
