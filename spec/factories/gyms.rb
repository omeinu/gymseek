FactoryBot.define do
  factory :gym do
    name { "MyString" }
    city { "MyString" }
    address { "MyString" }
    phone_number { 1 }
    url { "MyString" }
    image { "MyString" }
    opening_time { "2021-12-29 10:00:00" }
    closing_time { "2021-12-29 20:00:00" }
    introduction { "MyText" }
    fitness { false }
    swimming { false }
    yoga { false }
    personal { false }
    shower { false }
    sauna { false }
    parking { false }
    user_id { 1 }
    user
  end
end
