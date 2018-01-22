FactoryBot.define do
  factory :contact do
    name { FactoryBot.generate(:name) }
    phone { FactoryBot.generate(:phone) }
    email { FactoryBot.generate(:email) }
    category "test"
    message "test"
  end
end
