require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET #top" do
    before { get "/" }

    context "トップページが正しく表示されること" do
      it "正常なレスポンスであること" do
        get "/"
        expect(response).to have_http_status 200
      end
      it "タイトルが正しく表示されること" do
        expect(response.body).to include('Gymseek')
      end
    end
  end
end
