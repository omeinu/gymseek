FactoryBot.define do
  factory :comment do
    content { "MyString" }
    user
    gym
  end
end
