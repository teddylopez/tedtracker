FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Post 1"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Post 2"
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Post 3"
    non_authorized_user
  end
end
