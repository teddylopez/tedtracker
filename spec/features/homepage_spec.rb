require 'rails_helper'

describe 'Homepage' do
  it 'allows admins to approve submissions from the homepage' do
    post = FactoryGirl.create(:post)
		admin_user = FactoryGirl.create(:admin_user)
    login_as(admin_user, :scope => :user)

    visit root_path

    click_on("approve_#{post.id}")

    expect(post.reload.status == 'approved')
  end
end
