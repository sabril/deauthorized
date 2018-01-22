FactoryBot.define do
  
  sequence :email do |n|
    "#{Faker::Internet.user_name}_#{n}@#{Faker::Internet.domain_name}"
  end

  sequence :name do |n|
    "#{Faker::Name.name}"
  end

  sequence :phone do |n|
    Faker::PhoneNumber.cell_phone
  end

end