require "rails_helper"

RSpec.describe "users/new" do
	describe "integration tests" do
  	it "contains a container class" do
  		get "signup"
  		expect(response.body).to has_css("div.container")

  	end	
  end
  
end
