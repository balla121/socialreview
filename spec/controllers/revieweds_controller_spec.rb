require 'rails_helper'

RSpec.describe ReviewedsController, type: :controller do

	describe "Revieweds" do
		describe "when a user goes to the index path" do
			let(:reviewed) { create(:reviewed) }
			let(:user) { create(:user) }
			it "shows all the revieweds objects" do
				get :index
				expect(response).to render_template(:index)

			end
		end
	end
end
