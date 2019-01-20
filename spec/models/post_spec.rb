require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do

    before do
      @post = FactoryGirl.create(:post)
    end

    it "can be created" do
      expect(@post).to be_valid
    end

    it "can't be created without a date, rationale, and daily_hours" do
      @post.date = nil
      @post.rationale = nil
      @post.daily_hours = nil
      expect(@post).to_not be_valid
    end

    it 'has an daily_hours > 0.0' do
      @post.daily_hours = 0.0
      expect(@post).to_not be_valid
    end

  end
end
