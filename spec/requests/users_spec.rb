require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:user) { create(:user) }

  describe "GET users/registrations #new" do
    context "新規登録ページが正しく表示されること" do
      before { get signup_path }

      it "正常なレスポンスであること" do
        expect(response).to have_http_status 200
      end
      it "タイトルが正しく表示されること" do
        expect(response.body).to include('新規登録 - Gymseek')
      end
    end
  end

  describe "GET users/registrations #edit" do
    subject { get edit_user_registration_path }

    context "ログインしている場合にアカウント編集ページが正しく表示されること" do
      before { sign_in user }

      it "正常なレスポンスであること" do
        subject
        expect(response).to have_http_status 200
      end
      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('アカウント編集 - Gymseek')
      end
    end

    context "ログインしていない場合" do

      it "アカウント編集ページが表示されないこと" do
        subject
        expect(response).to have_http_status 302
      end
    end
  end

  describe "GET users/sessions #new" do
    context "ログインページが正しく表示されること" do
      before { get login_path }

      it "正常なレスポンスであること" do
        expect(response).to have_http_status 200
      end
      it "タイトルが正しく表示されること" do
        expect(response.body).to include('ログイン - Gymseek')
      end
    end
  end
end
