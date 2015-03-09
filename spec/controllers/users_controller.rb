require "rails_helper"
RSpec.describe UsersController do
  describe "new user" do
    xit "redirects to root_path after creating a new user" do
      user_attributes = FactoryGirl.attributes_for(:user)
      post :create, user: user_attributes
      expect(response).to redirect_to(root_path)
    end

  end
end