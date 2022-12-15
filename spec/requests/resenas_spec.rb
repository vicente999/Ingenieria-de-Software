require 'rails_helper'

RSpec.describe "Resenas", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/resenas/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/resenas/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/resenas/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/resenas/edit"
      expect(response).to have_http_status(:success)
    end
  end

end