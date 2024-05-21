FactoryBot.define do
  factory :book do
    id { 1 }
    title { Faker::Book.title }
    published { Faker::Date.backward }
    pages { Faker::Number.number(digits: 4) }
    created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
  end
end
