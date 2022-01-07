require 'rails_helper'

RSpec.describe "Gyms", type: :request do
  let!(:user_1) { FactoryBot.create(:user) }
  let!(:user_2) { FactoryBot.create(:user) }
  let!(:gym_1) { FactoryBot.create(:gym, user: user_1) }

  describe "GET gyms #index" do
    context "ジム一覧ページが正しく表示されること" do
      subject { get gyms_path }

      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('ジム一覧 - Gymseek')
      end
    end
  end

  describe "GET gyms #show" do
    context "ジム詳細ページが正しく表示されること" do
      subject { get gym_path(gym_1) }

      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('ジム詳細 - Gymseek')
      end
    end
  end

  describe "GET gyms #new" do
    subject { get new_gym_path }

    context "ログインしている場合にジム新規登録ページが正しく表示されること" do
      before { sign_in user_1 }

      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('ジム登録 - Gymseek')
      end
    end

    context "ログインしていない場合にログインページに移動すること" do
      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end

  describe "GET gyms #edit" do
    subject { get edit_gym_path(gym_1) }

    context "自分が登録したジムの編集ページが正しく表示されること" do
      before { sign_in user_1 }

      it '正常なレスポンスであること' do
        subject
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されること" do
        subject
        expect(response.body).to include('ジム編集 - Gymseek')
      end
    end

    context "他のユーザーの場合はトップページへ移動すること" do
      before { sign_in user_2 }

      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end

    context "ログインしていない場合はログインページへ移動すること" do
      it '他のページへ移動すること' do
        subject
        expect(response.status).to eq 302
      end
    end
  end
end
