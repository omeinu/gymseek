require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:user) { FactoryBot.create(:user) }

  describe "GET users/registrations #new" do
    subject { get signup_path }

    context "ログインしていない場合に新規登録ページが正しく表示されること" do
      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('新規登録 - Gymseek')
      end
    end

    context "ログインしている場合はトップページへ移動すること" do
      before { sign_in user }

      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end

  describe "GET users/registrations #edit" do
    subject { get edit_user_registration_path }

    context "ログインしている場合にアカウント編集ページが正しく表示されること" do
      before { sign_in user }

      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('アカウント編集 - Gymseek')
      end
    end

    context "ログインしていない場合はトップページへ移動すること" do
      before { get edit_user_registration_path }

      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end

  describe "GET users/sessions #new" do
    subject { get login_path }

    context "ログインしていない場合にログインページが正しく表示されること" do
      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('ログイン - Gymseek')
      end
    end

    context "ログインしている場合はトップページへ移動すること" do
      before { sign_in user }

      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end

  describe "GET users/passwords #new" do
    subject { get new_user_password_path }

    context "ログインしていない場合にパスワード再設定ページが正しく表示されること" do
      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('パスワード再設定 - Gymseek')
      end
    end

    context "ログインしている場合はトップページへ移動すること" do
      before { sign_in user }

      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end
end
