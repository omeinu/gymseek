require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.build(:user) }

  it "名前・メールアドレス、パスワードがあれば登録できること" do
    expect(user).to be_valid
  end
  it "名前を入力していなければ登録できないこと" do
    user.name = nil
    expect(user).not_to be_valid
    expect(user.errors).not_to be_empty
  end
  it "メールアドレスを入力していなければ登録できないこと" do
    user.email = nil
    expect(user).not_to be_valid
    expect(user.errors).not_to be_empty
  end
  it "パスワードを入力していなければ登録できないこと" do
    user.password = nil
    expect(user).not_to be_valid
    expect(user.errors).not_to be_empty
  end
  it "メールアドレスが重複している際に登録できないこと" do
    duplicate_user = create(:user)
    user.email = duplicate_user
    expect(user).not_to be_valid
    expect(user.errors).not_to be_empty
  end
  it "パスワードが5文字の時に登録できないこと" do
    user.password = "55555"
    expect(user).not_to be_valid
    expect(user.errors).not_to be_empty
  end
end
