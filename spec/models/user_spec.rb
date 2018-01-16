require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }
  
  subject { user }

  describe "subdomain" do
    it "should have subdomain" do
      user.save
      expect(user.subdomain).to be_truthy
    end
  end
end
