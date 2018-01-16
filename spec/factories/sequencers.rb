FactoryBot.define do
  
  sequence :email do |n|
    "#{Faker::Internet.user_name}_#{n}@#{Faker::Internet.domain_name}"
  end

end