FactoryBot.define do
  factory :user do
    email { FactoryBot.generate(:email) }
    password "testtest"
    password_confirmation {|u| u.password }
    # subdomain Faker::Internet.domain_word
  end
end
