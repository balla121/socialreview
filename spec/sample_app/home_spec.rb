require 'spec_helper'
require 'rails_helper'

describe "my first test" do
	describe "not testing any asserts" do
		it "should" do
			get 'static_pages#home'
			assert_loaded_page
		end
	end
end