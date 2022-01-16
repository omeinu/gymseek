FactoryBot.define do
  factory :gym do
    name { "ありがとうジム" }
    city { "岡山市中区" }
    address { "高屋" }
    phone_number { 1 }
    url { "MyString" }
    image { "MyString" }
    opening_time { "2021-12-29 10:00:00" }
    closing_time { "2021-12-29 20:00:00" }
    introduction { "とてもいいところです" }
    fitness { true }
    swimming { false }
    yoga { false }
    personal { true }
    shower { false }
    sauna { false }
    parking { true }
    user_id { 1 }
    user
  end
end
