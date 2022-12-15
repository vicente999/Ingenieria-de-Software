require 'rails_helper'

RSpec.describe "Historials", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/historial/index"
      expect(response).to have_http_status(:success)
    end
  end

end
