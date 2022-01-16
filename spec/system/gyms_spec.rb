require 'rails_helper'

RSpec.describe Gym, type: :system do
  let!(:gym) { FactoryBot.create(:gym) }

  before do
    visit gyms_path
  end

  describe "ヘッダーの検索機能" do
    context "正しいジム名を入力すると、検索できること" do
      before do
        fill_in "ジム名を入力", with: "ありがとうジム"
        click_on "検索"
      end

      it "検索結果にでジムが表示されること" do
        expect(page).to have_content "ありがとうジム"
        expect(page).to have_content "岡山市中区高屋"
        expect(page).to have_content "とてもいいところです"
      end
    end

    context "誤ったジム名を入力すると、検索できないこと" do
      before do
        fill_in "ジム名を入力", with: "ごめんなさいジム"
        click_on "検索"
      end

      it "検索結果にジムが表示されないこと" do
        expect(page).to have_no_content "ありがとうジム"
        expect(page).to have_no_content "岡山市中区高屋"
        expect(page).to have_no_content "とてもいいところです"
      end
    end
  end

  describe "詳細検索機能" do
    context "正しいジム名を入力すると、検索できること" do
      before do
        fill_in "ジム名", with: "ありがとうジム"
        click_on "検索する"
      end

      it "検索結果が正しく表示されること" do
        expect(page).to have_content "ありがとうジム"
        expect(page).to have_content "岡山市中区高屋"
        expect(page).to have_content "とてもいいところです"
      end
    end

    context "誤ったジム名を入力すると、検索できないこと" do
      before do
        fill_in "ジム名", with: "ごめんなさいジム"
        click_on "検索する"
      end

      it "検索結果にジムが表示されないこと" do
        expect(page).to have_no_content "ありがとうジム"
        expect(page).to have_no_content "岡山市中区高屋"
        expect(page).to have_no_content "とてもいいところです"
      end
    end

    context "正しい住所を入力すると、検索できること" do
      before do
        select "岡山市中区", from: "q_city_cont"
        fill_in "住所", with: "高屋"
        click_on "検索する"
      end

      it "検索結果にジムが表示されること" do
        expect(page).to have_content "ありがとうジム"
        expect(page).to have_content "岡山市中区高屋"
        expect(page).to have_content "とてもいいところです"
      end
    end

    context "誤った住所を入力すると、検索できないこと" do
      before do
        select "岡山市北区", from: "q_city_cont"
        fill_in "住所", with: "鹿田町"
        click_on "検索する"
      end

      it "検索結果にジムが表示されないこと" do
        expect(page).to have_no_content "ありがとうジム"
        expect(page).to have_no_content "岡山市中区高屋"
        expect(page).to have_no_content "とてもいいところです"
      end
    end

    context "ジムのオプションを正しく選択すると、検索できること" do
      before do
        check "駐車場"
        check "フィットネス"
        check "パーソナル"
        click_on "検索する"
      end

      it "検索結果にジムが表示されること" do
        expect(page).to have_content "ありがとうジム"
        expect(page).to have_content "岡山市中区高屋"
        expect(page).to have_content "とてもいいところです"
      end
    end

    context "誤ったジムのオプションを選択すると、検索できないこと" do
      before do
        check "駐車場"
        check "フィットネス"
        check "パーソナル"
        check "プール"
        click_on "検索する"
      end

      it "検索結果にジムが表示されないこと" do
        expect(page).to have_no_content "ありがとうジム"
        expect(page).to have_no_content "岡山市中区高屋"
        expect(page).to have_no_content "とてもいいところです"
      end
    end
  end
end
