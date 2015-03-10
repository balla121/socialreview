require 'rails_helper'

RSpec.describe "factories" do
  describe "valid factories" do
  	it "builds vactories that are valid" do
  		expect(build(:user)).to be_valid
  		expect(build(:micropost)).to be_valid
  		expect(build(:comment)).to be_valid
  		expect(build(:admin)).to be_valid
 		end
  end
end
