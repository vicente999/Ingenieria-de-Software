require 'rails_helper'

RSpec.describe "Equipos", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/equipo/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/equipo/create"
      expect(response).to have_http_status(:success)
    end
  end

end
