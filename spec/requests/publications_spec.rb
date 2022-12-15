require 'rails_helper'

RSpec.describe "Publications", type: :request do
    before(:each) do
        @attr_valid = {
            name: 'Example',
            rating: 1.0,
            description: 'Descripción',
            price: 1,
            category: 'Accion',
            clasification: 'AP',
            disponibility: true,
            tipo: 'Pelicula',
        }
    end
  describe "new" do
    it "returns http success" do
      get "/publications/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "index" do
    it "returns http success" do
      get "/publications/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "show" do
    it "returns http success" do
      get "/publications/show"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "edit" do
    it "returns http success" do
      get "/publications/edit"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "create" do
    it "should redirect after create a publication" do
        post '/publications', params: {publication: @attr_valid}
        change(Publication, :count).by(1)
    end
  end

end