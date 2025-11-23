FactoryBot.define do
  factory :task do
    title { "MyString" }
    description { "MyText" }
    due_date { "2025-11-23 14:36:24" }
    completed { false }
  end
end
