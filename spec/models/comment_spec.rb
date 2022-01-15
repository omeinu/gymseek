require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:comment) { FactoryBot.build(:comment) }

  it "コメントを登録できること" do
    expect(comment).to be_valid
  end
end
