require 'rails_helper'

RSpec.describe RegisterController, type: :controller do
  describe "GET /index" do
    it "render the root" do
      get :index
      expect(response).to render_template(:index)
    end
    it "status success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create_user" do
    it "assign the user" do
      user = User.new
      expect(user).to be_a_new(User)
    end
  end

  describe "POST /create" do
    subject(:user) { User.create }
    it "Saved successfully" do
      expect(user).to be_a_new(User)
    end
    it "" do
      get :create
      expect(response).to render_template(:index)
    end
  end
end
