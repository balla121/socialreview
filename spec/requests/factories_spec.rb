require "rails_helper"

RSpec.describe "factories" do
	
  describe "factory tests" do
  	let(:user) { FactoryGirl.build(:user) }
  	it "is a valid user" do
  		expect(user).to be_valid
  	end

  	let(:comment) { FactoryGirl.build(:comment) }
  	it "is a valid comment" do
  		expect(comment).to be_valid
  	end

  	let(:admin) { FactoryGirl.build(:admin) }
  	it "is a valid admin" do
  		expect(admin).to be_valid
  	end

  	let(:micropost) { FactoryGirl.build(:micropost) }
  	it "is a valid micropost" do
  		expect(micropost).to be_valid
  	end
	end
end