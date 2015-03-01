require "rails_helper"

RSpec.describe Micropost, :type => :model do

  describe "Microposts#like" do
    describe "when a user likes a micropost" do
      it "changes the likes count" do
        @user = User.create!(name: "Andy", email: "email@email.com", password: "password" )
        @micropost = Micropost.create!(content: "stuff", user_id: @user.id, rating: 5, subject: "stuff")
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
