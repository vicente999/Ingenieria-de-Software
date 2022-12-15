require 'rails_helper'

RSpec.describe "Contactos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/contacto/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/contacto/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/contacto/create"
      expect(response).to have_http_status(:success)
    end
  end

end
