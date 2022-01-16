require 'rails_helper'

RSpec.describe "Static pages" do
  describe "静的ページの表示" do
    it "プライバシーポリシーの表示" do
      visit '/pages/privacy_policy'
      expect(page).to have_title "プライバシーポリシー - Gymseek"
    end

    it "利用規約の表示" do
      visit '/pages/terms'
      expect(page).to have_title "利用規約 - Gymseek"
    end
  end
end
