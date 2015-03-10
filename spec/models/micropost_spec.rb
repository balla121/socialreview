require "rails_helper"

RSpec.describe Micropost, :type => :model do

  describe "Microposts#like" do
    describe "when a user likes a micropost" do
      it "changes the likes count" do
        @user = create(:user)
        @micropost = create(:micropost)
        @micropost.liked_by @user
        expect(@micropost.votes_for.size).to eq(1)
      end
    end
  end

  describe "Microposts#dislike" do
    describe "when a user dislikes a micropost" do
      it "changes the dislikes count" do

      end
    end
  end
end
