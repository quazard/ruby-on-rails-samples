FactoryBot.define do
  factory :author do
    id { 1 }
    name { Faker::Name.name }
    created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
  end
end
