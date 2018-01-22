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

  describe "multi tenants" do
    it "should have different set of contacts" do
      user.save
      user2 = FactoryBot.create(:user)
      Apartment::Tenant.switch! user.subdomain
      contact = FactoryBot.create(:contact)
      Apartment::Tenant.switch! user2.subdomain
      contact2 = FactoryBot.create(:contact)

      expect(Contact.all.length).to eq(1)
      expect(Contact.first).to eq(contact2)

      Apartment::Tenant.switch! user.subdomain

      expect(Contact.all.length).to eq(1)
      expect(Contact.first).to eq(contact)
    end
  end
end
