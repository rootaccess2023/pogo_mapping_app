FactoryBot.define do
  factory :report do
    address { "123 Quiapo Manila" }
    activities { "Pray in Quiapo Church" }
    summary { "Prayed and touched Nazareno's foot" }
    association :user
  end
end