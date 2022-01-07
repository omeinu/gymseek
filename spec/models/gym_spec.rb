require 'rails_helper'

RSpec.describe Gym, type: :model do
  let!(:gym) { FactoryBot.build(:gym) }

  it "ジム名・市区町村・住所・電話番号があれば登録できること" do
    expect(gym).to be_valid
  end
  it "ジム名を入力していなければ登録できないこと" do
    gym.name = nil
    expect(gym).not_to be_valid
    expect(gym.errors).not_to be_empty
  end
  it "市区町村を入力していなければ登録できないこと" do
    gym.city = nil
    expect(gym).not_to be_valid
    expect(gym.errors).not_to be_empty
  end
  it "住所を入力していなければ登録できないこと" do
    gym.address = nil
    expect(gym).not_to be_valid
    expect(gym.errors).not_to be_empty
  end
end
