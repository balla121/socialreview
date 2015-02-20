require 'rails_helper'

RSpec.describe "home page", type: :request do
  describe "when you go to the home page" do
    it "works and contains content" do
      get root_path
      page.should have_content "SocialReview"
    end
  end
end
