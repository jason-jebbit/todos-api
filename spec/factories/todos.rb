# Dependent Gem: Faker - used to generate fake data
FactoryBot.define do
  factory :todo do
    # By wrapping faker methods in a block, we ensure that faker generates dynamic data every time the factory is invoked. This way, we always have unique data.
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(digits: 10) }
  end
end
